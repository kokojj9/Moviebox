package com.kh.moviebox.reservation.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.moviebox.common.model.vo.Location;
import com.kh.moviebox.reservation.model.vo.Reservation;
import com.kh.moviebox.theater.model.vo.Seat;
import com.kh.moviebox.theater.model.vo.Theater;

public interface ReservationService {

	List<Location> selectLocationList();
	
	List<Theater> selectScreen(HashMap<String, String> map);
	
	List<Seat> checkSeatInfo(int screenNo);

	Reservation printReservationInfo(HashMap<String, Integer> map);
	
	int InsertReservation(Reservation reservation);
	
	Reservation checkReservationInfo(int ticketNo);

	List<Seat> selectSeatList(int ticketNo);
	
}
