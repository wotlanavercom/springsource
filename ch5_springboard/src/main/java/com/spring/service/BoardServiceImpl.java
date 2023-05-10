package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardDTO;
import com.spring.persistence.BoardDAO;

@Service("board")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public boolean insertBoard(BoardDTO dto) {		
		return boardDAO.insert(dto);
	}

	@Override
	public boolean updateBoard(BoardDTO dto) {		
		return boardDAO.update(dto);
	}

	@Override
	public boolean deleteBoard(int bno) {		
		return boardDAO.delete(bno);
	}

	@Override
	public BoardDTO getRow(int bno) {		
		return boardDAO.getRow(bno);
	}

	@Override
	public List<BoardDTO> getRows() {		
		return boardDAO.getList();
	}

}
