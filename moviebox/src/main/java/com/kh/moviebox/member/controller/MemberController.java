package com.kh.moviebox.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.moviebox.member.model.service.MemberService;
import com.kh.moviebox.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder; 
	
	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "member/login";
	}
	
	@RequestMapping("login.me")
	public ModelAndView login(ModelAndView mv, HttpSession session, Member member) {
		Member loginUser = memberService.login(member);
		
		if(loginUser != null/* && bcryptPasswordEncoder.matches(member.getMemberPwd(), loginUser.getMemberPwd())*/) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "로그인 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	@RequestMapping("logout.me")
	public String logout(HttpSession session) {
		session.removeAttribute("loginUser");
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
}
