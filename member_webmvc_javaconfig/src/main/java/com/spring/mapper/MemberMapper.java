package com.spring.mapper;

import com.spring.domain.AuthDTO;
import com.spring.domain.ChangeDTO;
import com.spring.domain.LoginDTO;
import com.spring.domain.MemberDTO;

public interface MemberMapper {
	public AuthDTO login(String userid);
	public int insert(MemberDTO memberDTO);
	public String getPass(String userid);
	public int dupId(String userid);
	public int leave(String userid);
	public int update(ChangeDTO changeDTO);
}
