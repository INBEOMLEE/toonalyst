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
    private long titleid;
    private Date regdate;
}
