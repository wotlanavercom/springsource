package com.example.restaurant.naver.service;

import java.util.List;

import com.example.restaurant.wishlistdto.WishListDTO;

public interface WishListService {
	public WishListDTO search(String query);
	public WishListDTO add(WishListDTO wishListDTO);
	public List<WishListDTO> all();

}
