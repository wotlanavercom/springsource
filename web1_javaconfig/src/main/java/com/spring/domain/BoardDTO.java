package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
@AllArgsConstructor@NoArgsConstructor
public class BoardDTO {
	private String name;
	private String password;
	private String title;
	private String content;

}
