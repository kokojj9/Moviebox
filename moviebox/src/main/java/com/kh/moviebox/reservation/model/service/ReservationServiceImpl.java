package com.kh.moviebox.reservation.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.moviebox.common.model.vo.Location;
import com.kh.moviebox.reservation.model.dao.ReservationRepository;
import com.kh.moviebox.reservation.model.vo.Reservation;
import com.kh.moviebox.theater.model.vo.Seat;
import com.kh.moviebox.theater.model.vo.Theater;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationRepository reservationRepository;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Location> selectLocationList() {
		return reservationRepository.selectLocationList(sqlSession);
	}

	@Override
	public List<Theater> selectScreen(HashMap<String, String> map) {
		return reservationRepository.selectScreen(sqlSession, map);
	}

	@Override
	public List<Seat> checkSeatInfo(int screenNo) {
		return reservationRepository.checkSeatInfo(sqlSession, screenNo);
	}

	@Override
	public Reservation printReservationInfo(HashMap<String, Integer> map) {
		return reservationRepository.printReservationInfo(sqlSession, map);
	}

	@Override
	public int InsertReservation(Reservation reservation) {
		int result = reservationRepository.insertReservation(sqlSession, reservation);
        if (result > 0) {
            result = reservationRepository.insertPriceSheet(sqlSession, reservation);
            if (result > 0) {
                result = reservationRepository.insertSeat(sqlSession, reservation);
            }
        }
        return result > 0 ? reservation.getTicketNo() : -1;
	}

	@Override
	public Reservation checkReservationInfo(int ticketNo) {
		return reservationRepository.checkReservationInfo(sqlSession, ticketNo);
	}

	@Override
	public List<Seat> selectSeatList(int ticketNo) {
		return reservationRepository.selectSeatList(sqlSession, ticketNo);
	}


}
