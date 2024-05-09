package com.kh.moviebox.reservation.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.kh.moviebox.reservation.model.service.ReservationService;
import com.kh.moviebox.reservation.model.vo.Reservation;

@RestController
@RequestMapping(value = "reservations", produces = "application/json; charset=UTF-8")
public class AjaxReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@PostMapping
	public String selectScreen(String location, String date, String movieNo, String theaterName) { 
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		if(location.equals("전체")) location = "";
		
		map.put("location", location);
		map.put("date", date);
		map.put("theaterName", theaterName);
		map.put("movieNo", movieNo);
		
		return new Gson().toJson(reservationService.selectScreen(map));
	}
	
	@GetMapping("/{screenNo}")
	public String checkSeatInfo(@PathVariable("screenNo") int screenNo) {
		return new Gson().toJson(reservationService.checkSeatInfo(screenNo));
	}
	
	/***
	 * 사용자가 인원과 좌석을 선택하고 예약정보를 DB로부터 조회하는 메소드
	 * 
	 * @param screenNo 사용자가 입력한 상영관 번호
	 * @param movieNo 사용자가 입력한 영화관 번호
	 * @param teenAge 청소년 인원수
	 * @param adultAge 성인 인원수
	 * @return 예약정보에 대한 값을 반환
	 */
	@PostMapping("/{movieNo}/{screenNo}/{teenAge}/{adultAge}")
	public String printReservationInfo(@PathVariable("screenNo") int screenNo,
									   @PathVariable("movieNo") int movieNo,
									   @PathVariable("teenAge") int teenAge,
									   @PathVariable("adultAge") int adultAge) {
		
		HashMap<String, Integer> map = new HashMap<>();
		
		map.put("movieNo", movieNo);
		map.put("screenNo", screenNo);
		map.put("adultAge", adultAge);
		map.put("teenAge", teenAge);
		
		return new Gson().toJson(reservationService.printReservationInfo(map)); 
	}
	
	@GetMapping
	public String checkReservationInfo(int ticketNo) {
		Reservation reservation = reservationService.checkReservationInfo(ticketNo);
		reservation.setSeatList(reservationService.selectSeatList(ticketNo));
		return new Gson().toJson(reservation);
	}
	
	
}
