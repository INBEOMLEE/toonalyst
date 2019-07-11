package com.toonalyst.domain.score;

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
public class ScoreDTO {
	private int sno;
    private String sid;
    private String scontent;
    private String sgood;
    private long titleId;
    private long sdate;
    private Date regdate;
    
    private int boardcnt;         // 조인으로 필요한 값을 담기 위한 변수
    private int commentcnt;       // 조인으로 필요한 값을 담기 위한 변수
    private int grade;       // 조인으로 필요한 값을 담기 위한 변수
}
