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
public class CommentDTO {
	
	private int cno;         
	private String ccontent; 
	private String cwriter;   
	private Date cregdate;           
	private int bno;  
	
	
}
