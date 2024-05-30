package kr.trip.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

/*CREATE TABLE travelPlan(
plan_id INT NOT NULL auto_increment PRIMARY KEY,
member_email VARCHAR(50) NOT NULL,
regdate DATETIME DEFAULT current_timestamp,    
go DATETIME,  #여행 시작 날교통수단
end DATETIME, #여행 마지막 날
day int, #여행 총 일 수
tpa_id INT, #Transportation: 교통수단
foreign key (member_email) REFERENCES member(member_email)ON DELETE CASCADE 
);*/
@Data
public class TravelPlanVO {
	
	private int plan_id;
	private String member_email;
	private Date regdate;
	private Date go;
	private Date end;
	private int tpa_id;
}
