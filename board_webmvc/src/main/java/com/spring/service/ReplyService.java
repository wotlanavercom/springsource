package com.spring.service;

import java.util.List;

import com.spring.domain.CriteriaDTO;
import com.spring.domain.ReplyDTO;

public interface ReplyService {
	public ReplyDTO read(int rno);
	public boolean insert(ReplyDTO dto);
	public List<ReplyDTO> getList(CriteriaDTO cri, int bno);
	public boolean update(ReplyDTO dto);
	public boolean delete(int rno);
}
