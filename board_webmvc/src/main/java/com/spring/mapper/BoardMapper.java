package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.BoardDTO;
import com.spring.domain.CriteriaDTO;

public interface BoardMapper {
	public List<BoardDTO> list(CriteriaDTO cri);
	public int insert(BoardDTO boardDTO);
	public BoardDTO getRow(int bno);
	public int update(BoardDTO boardDTO);
	public int delete(int bno);
	public int totalCnt(CriteriaDTO cri);
	public int updateReplyCnt(@Param("bno") int bno, @Param("amount")int amount);

}
