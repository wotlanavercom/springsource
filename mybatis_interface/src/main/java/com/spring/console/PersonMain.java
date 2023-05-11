package com.spring.console;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.domain.PersonDTO;
import com.spring.service.PersonService;
import com.spring.service.PersonServiceImpl;

public class PersonMain {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("config.xml");
		
		PersonService service = (PersonService) ctx.getBean("person");
		

		//삽입
//		PersonDTO insertPerson = new PersonDTO("hong1234", "박길동");
//		System.out.println(service.insertPerson(insertPerson)?"성공":"실패");
//		
//		
//		List<PersonDTO> list = service.getRows();
//		for (PersonDTO personDTO : list) {
//			System.out.println(personDTO);
//		}
		
		//수정
//		System.out.println(service.updatePerson(new PersonDTO("kim124","강길동"))?"성공":"실패");
		
		//삭제		
//		System.out.println(service.deletePerson("kim124")?"성공":"실패");
//		
//		// 특정인 조회
		System.out.println(service.getRow("hong1234"));
	}
	

}
