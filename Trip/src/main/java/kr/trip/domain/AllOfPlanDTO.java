package kr.trip.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AllOfPlanDTO {

	private int plan_id; //없음
	private String member_email;
	private Date go;//시작 날
	private Date end; //종료 날
	private int tContent_id; //고른 여행지 명
	private Date day;
	private int dayCnt;
	private Date time;
	private String content_id;
	private String addr2;
	private String phone;
	private String areaname;
	private String contentType;
	private Date created_time;
	private int likeNum;
	private byte[] image1;
}