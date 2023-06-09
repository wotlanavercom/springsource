package com.spring.memo.repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spring.memo.entity.Item;
import com.spring.memo.entity.ItemSellStatus;

@SpringBootTest
public class ItemRepositoryTest {
	
	//ItemRepository 잘 작성되었는지 테스트 : 단위 테스트	
	@Autowired
	private ItemRepository repository;
	
//	@Test
//	public void itemCreateTest() {
//		Item item = new Item();
//		item.setItemNm("블루투스 스피커");
//		item.setPrice(29500);
//		item.setStockNumber(40);
//		item.setItemDetail("우퍼내장 스피커");
//		item.setItemSellStatus(ItemSellStatus.SELL);
//		item.setRegTime(LocalDateTime.now());
//		item.setUpdateTime(LocalDateTime.now());
//		repository.save(item);
//		
//		item = Item.builder()
//						.itemNm("반팔티")
//						.price(45800)
//						.stockNumber(100)
//						.itemDetail("카라티")
//						.itemSellStatus(ItemSellStatus.SELL)
//						.regTime(LocalDateTime.now())
//						.updateTime(LocalDateTime.now())
//						.build();
//		
//		Item newItem = repository.save(item);
//		System.out.println(newItem);		
//	}

	//조회
//	@Test
//	public void getItem() {
		
//		Optional<Item> item = repository.findById(1L);		
//		item.ifPresent(ele -> System.out.println(ele));
		//위에 두줄 한줄로 줄인거
//		repository.findById(1L).ifPresent(ele -> System.out.println(ele));
//		
//		Item item = repository.findById(3L).orElseThrow(EntityNotFoundException::new);
//		System.out.println(item);
//	}
	
	//전체 조회
//	@Test
//	public void getItems() {
//		
//		List<Item> list = repository.findAll();
//		
////		for (Item item : list) {
////			System.out.println(list);			
////		}
//				
//		list.forEach(Item -> System.out.println(list));
//		
//	}
	
	//전체 조회
//	@Test
//	public void getItems() {
		
//		List<Item> list = repository.findByItemNm("반팔티");
//		list.forEach(item -> System.out.println(item));
		
//		repository.findByItemNm("반팔티")
//				  .forEach(item -> System.out.println(item));
//		
//	}
	
	//상품명 or 상품조회
//	@Test
//	public void getNameOrDetail() {
//		
//		List<Item> list = repository.findByItemNmOrItemDetail("블루투스 스피커", "카라티");
//		
//		list.forEach(item ->System.out.println(item));
//	
////	repository.findByItemNmOrItemDetail("블루투스 스피커", "카라티")
////			  .forEach(item -> System.out.println(item));
//	}
	
	//특정가격 이하인 상품 조회
//	@Test
//	public void getPriceLessThen() {
//		
//		repository.findByPriceLessThan(50000).forEach(item -> System.out.println(item));
//	}
	
	@Test
	public void getPriceLessThenOrder() {		
		repository.findByPriceLessThanOrderByPriceDesc(50000)
				  .forEach(item -> System.out.println(item));
	}
}
