package com.kh.moviebox.member.model.vo;

import java.sql.Date;
import java.util.List;

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
public class Member {
 
	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String memberName;
	private String birthday;
	private String gender;
	private String email;
	private String phone;
	private String address;
	private Date enrollDate;
	private String status;
	private String privilege;
	private String localCode;
	private String localName;
	private List<MemberGenre> genreList;
	
}
