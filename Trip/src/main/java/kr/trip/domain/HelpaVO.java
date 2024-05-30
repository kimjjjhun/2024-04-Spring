package kr.trip.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/*CREATE TABLE helpA(
helpa_id INT NOT NULL PRIMARY KEY,
help_id INT NOT NULL,             #외래키 지정 + ON DELETE CASEADE(연쇄 삭제) 
content varchar(500)NOT NULL,
image longblob,
regdate DATETIME DEFAULT current_timestamp
);
*/

@AllArgsConstructor
@Builder
@Data
public class HelpaVO {

	private Long helpa_id;
	private int help_id;
	private String member_email;
	private String content;
	private byte[] image;
	private Date regdate;
}
