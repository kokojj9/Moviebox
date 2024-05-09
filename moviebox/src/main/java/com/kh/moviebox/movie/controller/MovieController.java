package com.kh.moviebox.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.moviebox.movie.model.service.MovieService;

@Controller
public class MovieController {

	@Autowired
	private MovieService movieService;
	
	
}
