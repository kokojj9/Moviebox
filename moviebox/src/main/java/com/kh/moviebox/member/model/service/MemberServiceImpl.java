package com.kh.moviebox.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.moviebox.member.model.dao.MemberRepository;
import com.kh.moviebox.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member login(Member member) {
		
		Member loginUser = memberRepository.login(sqlSession, member);
		loginUser.setGenreList(memberRepository.loginGenre(sqlSession, member));
		
		return loginUser;
	}

}
