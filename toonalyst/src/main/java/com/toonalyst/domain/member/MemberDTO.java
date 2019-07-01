package com.toonalyst.domain.member;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class MemberDTO {
	private String id;              // 회원 아이디
	private String pw;              // 회원 비밀번호
	private String name;            // 회원 이름
	private String phone;           // 회원 전화번호
	private String email;           // 회원 이메일
	private String zipcode;         // 회원 우편번호
	private String addr1;           // 회원 주소
	private String addr2;           // 회원 상세주소
	private String gradeimg;        // 등급 이미지
	private int grade;              // 등급
	private int memexp;             // 경험치
	private int boardcnt;           // 회원이 작성한 게시물 수를 담을 변수
	private int commentcnt;         // 회원이 작성한 댓글 수를 담을 변수
	private Date regdate;           // 가입 일자
	private int toonadmin;			 // 운영자계정 admin = 1
	
}
