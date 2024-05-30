package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Criteria {

	private int pageNum; //몇페이지 1,2,3,
	private int amount; // 몇이지당 몇개 보여줄꺼니
	
	private String type;    //검색 종류 : T(title), C(content), W(writer) ,T, TC,TCW
	private String keyword;  //검색 단어
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	// type --> TCW               T|C|W
	public String[] getTypeArr() {
		return type == null ?  new String[] {} : type.split("");
	}
}











