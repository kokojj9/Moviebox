package com.kh.moviebox.reservation.model.vo;

import java.util.List;

import com.kh.moviebox.common.model.vo.Price;
import com.kh.moviebox.movie.model.vo.Movie;
import com.kh.moviebox.theater.model.vo.Seat;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class Reservation {
	
	private int ticketNo;
	private int personNum;
	private int memberNo;
	private int screenNo;
	private int movieNo;
	private String runningTime;
	private String status;
	private String movieTitle;
	private String theaterName;
	private String watchDate;
	private String reservationDate;
	private Price price;
	private List<Seat> seatList;
	private Movie movie;
	private String screenName;
	private boolean beforeCurrent;
	private int teenPersonNo;
	private int adultPersonNo;
}
