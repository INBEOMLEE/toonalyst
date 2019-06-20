package com.toonalyst.domain.exp;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ExpLogDTO {
	private String id;
	private int code;
	private int exp;
	private String reason;
	private Date ldate;
	private String ref;
}
