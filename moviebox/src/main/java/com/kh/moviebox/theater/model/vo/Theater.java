package com.kh.moviebox.theater.model.vo;

import java.util.List;

import com.kh.moviebox.movie.model.vo.Movie;

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
public class Theater {

	private int theaterNo;
	private String theaterName;
	private String theaterAddr;
	private String mapLink;
	private String localCode;
	private String updateDate;
	private String locationName;
	
	private int screenNo;
	private int movieNo;
	private String movieTitle;
	private String movieRt;
	private String filePath;
	private String changeName;
	
	private List<Movie> movieList;
	private List<Screen> screenList;
	
}
