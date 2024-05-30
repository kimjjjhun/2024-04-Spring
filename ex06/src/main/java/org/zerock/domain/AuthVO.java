package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AuthVO {
	
	
	
	//아이디
	private String userid;
	//권한
	private String auth;
}
