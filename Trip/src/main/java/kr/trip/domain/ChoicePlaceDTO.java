package kr.trip.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class ChoicePlaceDTO {
	private String contentName;  //장소명
	private String contentTypes; //장소 종류
	private String address;       //주소
	private String playTime;    //이 장소에서 머무는 시간

}
