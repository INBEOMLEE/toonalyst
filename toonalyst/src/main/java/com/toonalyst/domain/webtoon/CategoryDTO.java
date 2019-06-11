package com.toonalyst.domain.webtoon;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
 * CategoryDTO.java
 * 최초 작성 :19.06.11 최인준
 * 한 작품이 다수의 장르 카테고리를 갖는 경우가 발생할 수 있으므로
 * WebtoonDTO에서 별도의 DTO로 분리
 * titleId 변수는 WebtoonDTO의 titleId를 참조함
 * 
 * 마지막 수정 : 19.06.11 최인준
 */


@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class CategoryDTO {
	private int titleId;
	private String category;
}
