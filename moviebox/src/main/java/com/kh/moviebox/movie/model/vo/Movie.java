package com.kh.moviebox.movie.model.vo;

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
public class Movie {
	
	private int movieNo;
	private String movieTitle;
	private String movieRt;
	private String movieRated;
	private String movieRelease;
	private String movieStory;
	private String status;
	private String genreNo;
	private int directorNo;
	private String filePath;
	private String movieUpdate;
	private String genreName;
	private String directorName;
	private String watchDate;
	private int screenNo;
	private String changeName;
	private String trailerVideo;
}
