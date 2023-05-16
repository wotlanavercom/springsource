package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.AuthDTO;
import com.spring.domain.LoginDTO;
import com.spring.domain.MemberDTO;
import com.spring.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder bPasswordEncoder;
	
	@Override
	public AuthDTO login(LoginDTO loginDTO) {
		// 1234 ==> bPasswordEncoder.encode(1234) ==> 암호화
		// matches(암호화하기 전 코드, 암호화된 코드)
		// matches(1234,db암호된 문자)
		
		// 비밀번호가 일치하는가?
		// db에서 암호화된 비번 가져오기
		String encodePass = mapper.getPass(loginDTO.getUserid());
		
		if (bPasswordEncoder.matches(loginDTO.getPassword(), encodePass)) {
			return mapper.login(loginDTO.getUserid());			
		}else {
			return null;
		}
	}

	@Override
	public boolean register(MemberDTO memberDTO) {
		//비밀번호 암호화 : encode(암호화할 원본 코드)
		//			  matches(암호화하기 전, 암호화 코드)
		//			  1234, 암호화된 코드
		// matches :  비밀번호가 일치하는지 확인하는 메서드입니다. 
		//암호화하기 전의 원본 코드와 암호화된 코드를 비교하여 일치 여부를 판단한다.
		memberDTO.setPassword(bPasswordEncoder.encode(memberDTO.getPassword()));
		return mapper.insert(memberDTO) == 1? true : false;
	}
	
	
}
