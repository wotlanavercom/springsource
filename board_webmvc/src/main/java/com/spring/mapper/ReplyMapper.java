package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.CriteriaDTO;
import com.spring.domain.ReplyDTO;

public interface ReplyMapper {
	public ReplyDTO read(int rno);
	public int insert(ReplyDTO dto);
	public List<ReplyDTO> listAll(@Param("cri") CriteriaDTO cri, @Param("bno") int bno);
	public int getCountByBno(int bno);
	public int update(ReplyDTO dto);
	public int delete(int rno);
	public int deleteAll(int bno);
}
