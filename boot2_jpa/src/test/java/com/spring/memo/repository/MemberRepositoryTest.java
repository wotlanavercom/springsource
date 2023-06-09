package com.spring.memo.repository;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spring.memo.entity.Member;

@SpringBootTest
public class MemberRepositoryTest {
	
	@Autowired
	private MemberRepository repository;
	
	@Test
	public void createMember() {
		
		Member member = Member.builder()							  
							  .name("홍길동")
							  .email("hong123@naver.com")
							  .password("1234")
							  .address("서울시 종로")
							  .build();
		repository.save(member);
	}

}
