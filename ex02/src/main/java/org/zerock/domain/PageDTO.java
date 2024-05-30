package org.zerock.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	//시작페이지
	private int startPage;
	//끝 페이지
	private int endPage;
	//이전 , 다음 페이지
	private boolean prev, next;
	//실제 페이지
	private int total;
	//페이징처리
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
							//ceil 은 반올림 양수화 
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0)) * 10;
		this.startPage = endPage -9;
		
		//실제 페이지
							//ceil 은 반올림 양수화
		int realEnd = (int)(Math.ceil((total* 1.0) /cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
