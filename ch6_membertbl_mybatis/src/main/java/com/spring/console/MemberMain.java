package com.spring.console;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.spring.domain.MemberDTO;
import com.spring.service.MemberService;

public class MemberMain {

	public static void main(String[] args) {
		ApplicationContext cxt = new ClassPathXmlApplicationContext("config.xml");
		
		MemberService service = (MemberService)cxt.getBean("member");
		
		//전체조회
		List<MemberDTO> list = service.getRows();
		for (MemberDTO memberDTO : list) {
			System.out.println(memberDTO);
		}

//		삽입
//		MemberDTO dto = new MemberDTO();
//		dto.setUserid("wotla12");
//		dto.setPassword("123@");
//		dto.setName("이몽룡");
//		dto.setGender("남");
//		dto.setEmail("wo@so.com");
//		boolean result = service.insertMember(dto);
//		System.out.println(result?"성공":"실패");
//		
//		//수정
//		MemberDTO updateDto = new MemberDTO();
//		updateDto.setUserid("wotla123");
//		updateDto.setPassword("123@");
//		updateDto.setEmail("wo@so.com");
//		System.out.println(service.updateMember(updateDto)?"성공":"실패");
//		
//		//삭제
		System.out.println(service.deleteMember("wotla123", "123@")?"성공":"실패");
		
		//특정 조회
//		System.out.println(service.getRow("wotla123", "123@"));

	}

}
