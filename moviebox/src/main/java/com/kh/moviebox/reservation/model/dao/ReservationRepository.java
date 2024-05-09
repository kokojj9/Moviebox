package com.kh.moviebox.reservation.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.moviebox.common.model.vo.Location;
import com.kh.moviebox.reservation.model.vo.Reservation;
import com.kh.moviebox.theater.model.vo.Seat;
import com.kh.moviebox.theater.model.vo.Theater;

@Repository
public class ReservationRepository {

	public List<Location> selectLocationList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("reservationMapper.selectLocationList");
	}

	public List<Theater> selectScreen(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectList("reservationMapper.selectScreen", map);
	}

	public List<Seat> checkSeatInfo(SqlSessionTemplate sqlSession, int screenNo) {
		return sqlSession.selectList("reservationMapper.checkSeatInfo", screenNo);
	}

	public Reservation printReservationInfo(SqlSessionTemplate sqlSession, HashMap<String, Integer> map) {
		return sqlSession.selectOne("reservationMapper.printReservationInfo", map);
	}

	public int insertReservation(SqlSessionTemplate sqlSession, Reservation reservation) {
		return sqlSession.insert("reservationMapper.insertReservation", reservation);
	}

	public int insertPriceSheet(SqlSessionTemplate sqlSession, Reservation reservation) {
		return sqlSession.insert("reservationMapper.insertPriceSheet", reservation);
	}

	public int insertSeat(SqlSessionTemplate sqlSession, Reservation reservation) {
		return sqlSession.insert("reservationMapper.insertSeat", reservation);
	}

	public Reservation checkReservationInfo(SqlSessionTemplate sqlSession, int ticketNo) {
		return sqlSession.selectOne("reservationMapper.checkReservationInfo", ticketNo);
	}

	public List<Seat> selectSeatList(SqlSessionTemplate sqlSession, int ticketNo) {
		return sqlSession.selectList("reservationMapper.selectSeatList", ticketNo);
	}

}
