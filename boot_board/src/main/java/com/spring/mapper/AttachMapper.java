package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.domain.AttachFileDTO;

@Mapper
public interface AttachMapper {
	public int insert(AttachFileDTO dto);
	public List<AttachFileDTO> select(int bno);
	public int deleteAll(int bno);
	//어제 날짜 첨부 파일
	public List<AttachFileDTO> oldFiles();
}
