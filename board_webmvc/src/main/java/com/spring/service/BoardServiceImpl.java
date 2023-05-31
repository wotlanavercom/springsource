package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.AttachFileDTO;
import com.spring.domain.BoardDTO;
import com.spring.domain.CriteriaDTO;
import com.spring.mapper.AttachMapper;
import com.spring.mapper.BoardMapper;
import com.spring.mapper.ReplyMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private ReplyMapper replyMapper;
	
	@Override
	public List<BoardDTO> getList(CriteriaDTO cri) {		
		return mapper.list(cri);
	}

	@Transactional
	@Override
	public boolean insert(BoardDTO dto) {	
		//board 테이블 + attach 테이블 등록
		boolean insertFlag = mapper.insert(dto) == 1? true : false;
		
		//첨부파일 여부 확인
		if(dto.getAttachList() == null || dto.getAttachList().size() == 0) {
			return insertFlag;
		}
		
		dto.getAttachList().forEach(attach -> {
			attach.setBno(dto.getBno());
			attachMapper.insert(attach);
		});
		return insertFlag;
	}

	@Override
	public BoardDTO getRow(int bno) {
		
//		BoardDTO dto = mapper.readAttach(bno);
//		log.info("상세 + 파일첨부 "+dto);
		return mapper.getRow(bno);
	}

	@Transactional
	@Override
	public boolean update(BoardDTO boardDTO) {	
		
		boolean updateFlag = mapper.update(boardDTO) == 1? true : false;
		
		//기존 첨부목록 제거
		attachMapper.deleteAll(boardDTO.getBno());
		
		//첨부파일이 있다면
		if(boardDTO.getAttachList() == null || boardDTO.getAttachList().size() == 0) {
			return updateFlag;
		}
		
		//첨부목록 삽입
		boardDTO.getAttachList().forEach(attach -> {
			attach.setBno(boardDTO.getBno());
			attachMapper.insert(attach);
		});
		
		return updateFlag;
	}

	@Transactional
	@Override
	public boolean delete(int bno) {	
		
		//자식 댓글 삭제
		replyMapper.deleteAll(bno);
		//첨부파일 삭제
		attachMapper.deleteAll(bno);
		
		return mapper.delete(bno) == 1? true : false;
	}

	@Override
	public int getTotalCnt(CriteriaDTO cri) {		
		return mapper.totalCnt(cri);
	}

	@Override
	public List<AttachFileDTO> getAttachList(int bno) {		
		return attachMapper.select(bno);
	}

	

}
