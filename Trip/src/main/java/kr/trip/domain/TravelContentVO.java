package kr.trip.domain;

import java.util.Date;

import lombok.Data;

/*CREATE TABLE travelContent( 
tContent_id INT NOT NULL auto_increment PRIMARY KEY,
plan_id INT NOT NULL,
content_id VARCHAR(100),
foreign key (content_id) REFERENCES content(content_id)ON DELETE cascade ,
foreign key (plan_id) references travelplan(plan_id)on delete cascade
);*/

@Data

public class TravelContentVO {

	private int tContent_id;
	private int plan_id;
	private String content_id;
	private Date day;
	private Date time;
	
}
