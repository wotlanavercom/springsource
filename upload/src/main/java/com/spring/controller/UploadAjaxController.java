package com.spring.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.spring.domain.AttachFileDTO;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnails;

@Slf4j
@Controller
public class UploadAjaxController {

	//uploadAjax 컨트롤러 생성
	@GetMapping("/uploadAjax")
	public void uploadAjaxGet() {
		log.info("uploadAjax 폼 요청");
	}
	
	//파일이 한개 일때
//	@PostMapping("/uploadAjax")
//	public ResponseEntity<String> uploadAjaxPost(MultipartFile uploadFile) {
//		log.info("upload 요청");
//		
//		log.info("file name "+uploadFile.getOriginalFilename());
//		log.info("file size "+uploadFile.getSize());
//		
//		String uploadPath = "c:\\upload";
//		UUID uuid = UUID.randomUUID();
//		String fileName = uuid.toString() + "_" + uploadFile.getOriginalFilename();
//		
//		try {
//			uploadFile.transferTo(new File(uploadPath,fileName));
//		} catch (IllegalStateException e) {			
//			e.printStackTrace();
//		} catch (IOException e) {			  
//			e.printStackTrace();
//		}
//		//상태코드 + 메세지
//		return new ResponseEntity<>(fileName, HttpStatus.OK);
//	}
	
	//파일이 여러개 일떄
//	@PostMapping("/uploadAjax")
//	public ResponseEntity<List<String>> uploadAjaxPost(MultipartFile[] uploadFile) {
//		log.info("upload 요청");
//		
//		List<String> fileList = new ArrayList<String>();
//		
//		for (MultipartFile multipartFile : uploadFile) {
//			
//			log.info("file name "+multipartFile.getOriginalFilename());
//			log.info("file size "+multipartFile.getSize());
//			
//			String uploadPath = "c:\\upload";
//			UUID uuid = UUID.randomUUID();
//			String fileName = uuid.toString() + "_" + multipartFile.getOriginalFilename();
//			
//			fileList.add(multipartFile.getOriginalFilename());
//			
//			try {
//				multipartFile.transferTo(new File(uploadPath,fileName));
//			} catch (IllegalStateException e) {			
//				e.printStackTrace();
//			} catch (IOException e) {			  
//				e.printStackTrace();
//			}
//		}		
//		//상태코드 + 메세지
//		return new ResponseEntity<>(fileList, HttpStatus.OK);
//	}
	
	@PostMapping("/uploadAjax")
	public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		log.info("upload 요청");
		
		List<AttachFileDTO> fileList = new ArrayList<AttachFileDTO>();
		
		String uploadPath = "c:\\upload"; //uploadFolderPath = c:\\upload
		//폴더 생성 => c:\\upload\\2023\\05\\26  uploadPath = 2023\\05\\26
		String uploadFolderPath = getFolder();
		log.info("uploadFolderPath", uploadFolderPath);
		
		File uploadFullPath = new File(uploadPath, uploadFolderPath);
		
		if(!uploadFullPath.exists()) {
			uploadFullPath.mkdirs();  //uploadFullPath = 2023\\05\\26 여기 안에 저장
		}
		
		for (MultipartFile multipartFile : uploadFile) {
			
			log.info("file name "+multipartFile.getOriginalFilename());
			log.info("file size "+multipartFile.getSize());
			
			UUID uuid = UUID.randomUUID();
			String fileName = uuid.toString() + "_" + multipartFile.getOriginalFilename();
			
			File saveFile = new File(uploadFullPath,fileName);
			
			//파일 한 개당 AttachFileDTO 생성
			AttachFileDTO attach = new AttachFileDTO();
			attach.setFileName(multipartFile.getOriginalFilename());
			attach.setUploadPath(uploadFolderPath);
			attach.setUuid(uuid.toString());
			
			try {
				//원본 파일 저장
				multipartFile.transferTo(saveFile);
				
				//업로드된 파일 타입 체크
				if(chackImageType(saveFile)) {
					attach.setFileType(true);
					
					//이미지 파일이라면 썸네일 이미지로 저장
					//원본 이미지 읽어오기
					BufferedImage origin = ImageIO.read(saveFile);
					//썸네일 파일명
					File thumbnail = new File(uploadFullPath, "s_"+fileName);
					
					//double ratio = 10; //추소 비율
					//int width = origin.
					Thumbnails.of(origin).size(100, 100).toFile(thumbnail);
				}				
			} catch (IllegalStateException e) {			
				e.printStackTrace();
			} catch (IOException e) {			  
				e.printStackTrace();   
			} 
			fileList.add(attach);
		}		
		//상태코드 + 메세지
		return new ResponseEntity<>(fileList, HttpStatus.OK);
	}
	//파일 요청 시 파일 보내주기
	@GetMapping("/display")
	public ResponseEntity<byte[]> getFile(String fileName){
		log.info("파일 요청 "+fileName);
		
		File file = new File("c:\\upload\\"+fileName);
				
		HttpHeaders headers = new HttpHeaders();
		ResponseEntity<byte[]> result = null;		
		try {
			//서버가 보내는 파일에 대한 타입 지정
			headers.add("content-type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file),HttpStatus.OK);
		} catch (IOException e) {			
			e.printStackTrace();
		}
		return result;
	}
	
	//일반 메소드(파일 타입 확인)
	public boolean chackImageType(File file) {
		String contentType;
		
		try {
			contentType = Files.probeContentType(file.toPath());  // image/gif, image/jpg,
			return contentType.startsWith("image");
		} catch (IOException e) {			
			e.printStackTrace();
		}
		return false;
	}
	//일반 메소드(폴더 생성)
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");
		
		Date date = new Date(); //날짜 정보가 길게
		String str = sdf.format(date); // 2023-05-26
		return str.replace("-", File.separator);// c:/1.jpg
	}
}
