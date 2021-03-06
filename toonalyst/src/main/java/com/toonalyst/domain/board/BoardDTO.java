package com.toonalyst.domain.board;

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
public class BoardDTO {
	private int bno; 			 // 기본키
	private String btitle; 	     //게시글제목
	private String bcontent;	 //게시글 내용
	private String btext;  		 
	private String bwriter; 	 // 게시글 작성자
    private int	 bviewcnt;        // 조회수
    private int	 bgoodcnt;        // 좋아요
    private String[] files;	// 파일 이름 저장( local에 실제파일 있으니 DB에는 이름만 들어가면 된다)
    private int	 bcommentcnt;     // 댓글수
    private int bcategory;       // 상세 카테고리
    private int borigin;   		 // 숙주 	
    private int bturn;
    private int	 bdepth; 
    private int badmin;
	private Date bregdate; // 게시글 작성일자
	
	// 게시판 전체 게시물을 출력할 때 필요한 변수 (게시판 레벨이미지 띄어주기 위한 변수)
	private String grade;
	   
}
