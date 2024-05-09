package com.kh.moviebox.theater.model.vo;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class Seat {
	
	private String seatNo;
	private int screenNo;
	private int ticketNo;
	
}
