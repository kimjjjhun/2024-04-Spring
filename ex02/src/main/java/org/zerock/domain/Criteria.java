package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

//페이징처리
public class Criteria {
	
	private int pageNum; //몇페이지 1,2,3
	
	private int amount; // 페이지당 몇개의 리스트 보여줄지
	
	private String type; //검색종류 : T(title), C(content), W(writer)
	
	private String keyword; // 검색 단어
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum,int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	//type -> T,C,W
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
}
