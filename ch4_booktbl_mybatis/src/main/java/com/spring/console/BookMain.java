package com.spring.console;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.spring.domain.BookDTO;
import com.spring.service.BookService;
import com.spring.service.BookServiceImpl;

public class BookMain {
	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("config.xml");
		
		//Service 호출
		BookService service = (BookService) ctx.getBean("bookService");
		
		//도서 추가
		BookDTO insertDto = new BookDTO(1007, "모두의 알고리즘", "이승찬", 25000, "파이썬으로 구현하는 알고리즘");
		if(service.insertBook(insertDto)) {
			System.out.println("입력성공");
		}
		
		//도서 수정
//		BookDTO updateDto = new BookDTO();
//		updateDto.setCode(1001);
//		updateDto.setPrice(26000); 
		//위에 3줄 줄인 코드
//		if(service.updateBook(30000,1001)) {
//			System.out.println("수정 성공");
//		}
//		
//		//특정 도서 조회
//		BookDTO row = service.getBook(1001);
//		System.out.println(row);
//		
//		//도서 삭제
//		if(service.deleteBook(1006)) {
//			System.out.println("삭제성공");
//		}
			
		//전체 도서 목록 가져오기
		//BookService service = new BookServiceImpl(new BookDAO());
//		List<BookDTO> list = service.getBookList();
//		
//		for (BookDTO bookDTO : list) {
//			System.out.println(bookDTO);
//		}
		
	}

}
