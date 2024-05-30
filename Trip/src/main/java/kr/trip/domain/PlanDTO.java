package kr.trip.domain;

import java.util.List;

import lombok.Data;


@Data
public class PlanDTO {
    private List<DateBetweenDTO> date;
    private List<ChoicePlaceDTO> place;
    private List<SleepNameDTO> sleep;
}
