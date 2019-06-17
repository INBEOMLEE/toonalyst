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
	private String btext;  		 //
	private String bwriter; 	 // 게시글 작성자
    private int	bviewcnt;        // 조회수
    private int	bgoodcnt;        // 좋아요
    private int bcategory;       // 상세 카테고리
    private int borigin;   		 // 숙주 	
    private int bturn;
    private int	bdepth; 
    private int badmin;
	private Date bregdate; // 게시글 작성일자
	   
}
