package kr.trip.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*content_id	varchar(100)
addr1	varchar(100)
addr2	varchar(100)
phone	varchar(50)
cExplain	varchar(200)
areaname	varchar(100)
contentType	varchar(50)
created_time	datetime
likeNum	int
image1	longblob
mapx	varchar(200)
mapy	varchar(200)
maplevel	varchar(20)*/
@Data
public class ContentVO {
	private int tcontent_id;
	private String content_id;
	private String addr1;
	private String addr2;
	private String phone;
	private String cExplain;
	private String areaname;
	private String contentType;
	private Date created_time;
	private Long likeNum;
	private byte[] image1;


}
