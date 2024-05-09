package com.kh.moviebox.theater.model.vo;

import java.util.List;

import com.kh.moviebox.movie.model.vo.Movie;

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
public class Screen {

	private int screenNo;
	private int theaterNo;
	private int movieNo;
	private String watchDate;
	private String screenName;
	private String theaterName;
	private String movieTitle;
	private int movieRt;
	
	private List<Integer> screenNoList;
	private List<String> screenNameList;
	
	private List<String> watchDateList;
	private List<Movie> movieList;
	private List<Movie> movieNameList;
	
}
