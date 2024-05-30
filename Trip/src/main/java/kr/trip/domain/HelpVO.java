package kr.trip.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/*CREATE TABLE help(
help_id INT NOT NULL PRIMARY KEY,
member_email VARCHAR(50) NOT NULL, #외래키 지정 + ON DELETE CASEADE(연쇄 삭제) 
title VARCHAR(100) NOT NULL,
content varchar(500)NOT NULL,
image longblob,
regdate DATETIME DEFAULT current_timestamp
);
*/

@Data
public class HelpVO {
	
	private int help_id;
	private String member_email;
	private String title;
	private String content;
	private byte[] image;
	private Date regDate;
	private Date updateDate;
	private int answer;
	
}
