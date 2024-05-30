package kr.com.ezen;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class MemberVO {
	private int id;
	private String name;
	private String phone;
	private String address;
}
