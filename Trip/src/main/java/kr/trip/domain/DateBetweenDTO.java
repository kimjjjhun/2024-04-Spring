package kr.trip.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class DateBetweenDTO {
	private String day;  //       05/24
	private String dayOfWeek; // (금)
	private String startTime; //  08:00
	private String endTime; //    22:00

}
