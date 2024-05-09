package com.kh.moviebox.movie.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.moviebox.movie.model.vo.Movie;

@Repository
public class MovieRepository {

	public List<Movie> selectMovieList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("movieMapper.selectMovieList");
	}

}
