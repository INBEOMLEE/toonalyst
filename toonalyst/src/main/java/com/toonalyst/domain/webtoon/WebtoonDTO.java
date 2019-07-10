package com.toonalyst.domain.webtoon;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


/*
 * WebtoonDTO.java
 * 최초 작성 :19.06.11 최인준
 * 웹툰 정보를 담을 DTO 클래스
 * 현재 정리 작성중 이므로 수정하지 말것(19.06.11)
 * 작성이 끝나는 데로 해당 클래스 정보를 토대로 DB테이블 작성 예정
 * 
 * 마지막 수정 : 19.06.11 최인준
 */


@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class WebtoonDTO {
	private String platForm;	//제공플랫폼
	private long titleId;		//웹툰 고유 ID 숫자로 구성됨
	private String titleName;	//웹툰 제목
	private String writer;		//작가
	private float rating;		//웹툰 제공 플랫폼 별점
	private float innerrating;	//우리 페이지 별점
	private int finish;			//완결 여부
	private String bannerimg;	//배너이미지
}
