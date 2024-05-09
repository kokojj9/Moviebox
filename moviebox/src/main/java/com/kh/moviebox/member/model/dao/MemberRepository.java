package com.kh.moviebox.member.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.moviebox.member.model.vo.Member;
import com.kh.moviebox.member.model.vo.MemberGenre;

@Repository
public class MemberRepository {

	public Member login(SqlSessionTemplate sqlSession, Member member) {
		return sqlSession.selectOne("memberMapper.login", member);
	}
	
	public List<MemberGenre> loginGenre(SqlSessionTemplate sqlSession, Member member) {
		return sqlSession.selectList("memberMapper.loginGenre", member);
	}

}
