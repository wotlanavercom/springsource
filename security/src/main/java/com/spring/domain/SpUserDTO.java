package com.spring.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
@AllArgsConstructor@NoArgsConstructor
public class SpUserDTO {
	private String userid;
	private String password;
	private String email;
	private boolean enabled;

	private List<SpUserAuthorityDTO> authorites;
}
