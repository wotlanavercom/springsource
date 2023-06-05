package com.spring.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

/*
 * java.util.Collection interface
 * - java.ultil.List interface
 *     ㄴjava.util.ArrayList
 *     ㄴjava.util.LinkedList
 *     
 * - java.ultil.set interface
 * 	   ㄴ java.util.HashSet
 * 
 * - ? extends GrantedAuthority : GrantedAuthority 와 자손들만 가능
 * 
 * ==> List<GrantedAuthority>, Set<GrantedAuthority>
 * 
 * ==> dto.getAuthorites() ==> List<SpUserAuthorityDTO> ==> SpUserAuthorityDTO를 GrantedAuthority 객체 생성
 */

@Getter
public class CustomUser extends User {
	
	private SpUserDTO dto;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);		
	}

	public CustomUser(SpUserDTO dto) {
		super(dto.getUserid(), dto.getPassword(), dto.getAuthorites()
													 .stream().map(auth -> new SimpleGrantedAuthority(auth.getAuthority()))
													 .collect(Collectors.toList()));
		this.dto = dto;
	}
}
