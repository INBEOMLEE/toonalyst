package com.toonalyst.domain.board;

import java.util.Date;

import org.springframework.stereotype.Service;

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
public class AttachDTO {
	private String fullname;
	private int bno;
	private Date regdate;
	
}
