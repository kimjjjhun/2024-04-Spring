package org.zerock.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
 * create table tbl_reply(
    rno number(10,0),            -- 기본키
    bno number(10,0) not null,   --외래키
    reply varchar2(1000) not null,
    replyer varchar2(50) not null,
    replyDate date default sysdate,
    updateDate date default sysdate
);
 */

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReplyVO {
	private Long rno;  //x long rno
	private Long bno;
	
	private String reply;
	private String replyer;
	
	private Date replyDate;
	private Date updateDate;
	
}
