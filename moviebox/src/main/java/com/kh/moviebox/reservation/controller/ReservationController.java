package com.kh.moviebox.reservation.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.moviebox.movie.model.service.MovieService;
import com.kh.moviebox.reservation.model.service.ReservationService;
import com.kh.moviebox.reservation.model.vo.Reservation;
import com.kh.moviebox.theater.model.vo.Seat;
import com.kh.moviebox.theater.model.vo.Theater;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private MovieService movieService;
	
	@RequestMapping("movie.reservation")
	public String selectReservationInfo(Model model) {
		model.addAttribute("locationList", reservationService.selectLocationList());
		model.addAttribute("movieList", movieService.selectMovieList());
		
		return "reservation/movieReservation";
	};
	
	@RequestMapping("seat.reservation")
	public String connectSeatSelection(String theaterName, String movieTitle, 
									   String screenDate, String screenName, 
									   String screenNo, String movieNo, Model model) {
		
		model.addAttribute("theaterName", theaterName);
		model.addAttribute("screenDate", screenDate);
		model.addAttribute("movieTitle", movieTitle);
		model.addAttribute("screenName", screenName);
		model.addAttribute("screenNo", screenNo);
		model.addAttribute("movieNo", movieNo);
		
		if(screenNo.equals("")) {
			model.addAttribute("errorMsg", "잘못된 요청입니다.");
			return "common/errorPage";
		} else {
			return "reservation/seatReservation";
		}
	}
	
	@RequestMapping("payment.reservation")
	public String insertReservation(Reservation reservation, String seatNo, Model model) {
		List<Seat> seatList = new ArrayList<Seat>();
		String[] seatArray = seatNo.split(", ");
		
		for(String s:seatArray) {
			Seat seat = new Seat();
			seat.setSeatNo(s);
			seatList.add(seat);
		}
		
		reservation.setSeatList(seatList);
		reservation.setPersonNum(reservation.getTeenPersonNo() + reservation.getAdultPersonNo());
		
		int ticketNo = reservationService.InsertReservation(reservation);
		
		if(ticketNo > 0) {
			model.addAttribute("ticketNo", ticketNo);
			return "reservation/infoReservation";
		} else {
			return "common/errorPage";
		}
	}
	/*
	@ResponseBody
	@GetMapping(value = "screen.reservationAjax", produces = "application/json; charset=UTF-8")
	public String selectScreen(String location, String date, 
							   String theaterName, String movieNo) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		if(location.equals("전체")) location = "";
		
		map.put("location", location);
		map.put("date", date);
		map.put("theaterName", theaterName);
		map.put("movieNo", movieNo);
		
		return new Gson().toJson(reservationService.selectScreen(map));
	}
	
	@ResponseBody
	@GetMapping(value = "seat.reservationAjax", produces = "application/json; charset=UTF-8")
	public String checkSeatInfo(int screenNo) {
		return new Gson().toJson(reservationService.checkSeatInfo(screenNo));
	}
	
	@ResponseBody
	@PostMapping(value = "printInfo.reservationAjax", produces = "application/json; charset=UTF-8")
	public String printReservationInfo(int movieNo, int screenNo, int adultAge, int teenAge) {
		HashMap<String, Integer> map = new HashMap<>();
		
		map.put("movieNo", movieNo);
		map.put("screenNo", screenNo);
		map.put("adultAge", adultAge);
		map.put("teenAge", teenAge);
		
		return new Gson().toJson(reservationService.printReservationInfo(map)); 
	}
	
	@ResponseBody
	@PostMapping(value = "checkInfo.reservationAjax", produces = "application/json; charset=UTF-8")
	public String checkReservationInfo(int ticketNo) {
		Reservation reservation = reservationService.checkReservationInfo(ticketNo);
		reservation.setSeatList(reservationService.selectSeatList(ticketNo));
		System.out.println(reservation);
		return new Gson().toJson(reservation);
	}
	*/
	
	
	
	
	
	
	
	
	
	
	
}
