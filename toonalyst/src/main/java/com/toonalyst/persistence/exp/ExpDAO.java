package com.toonalyst.persistence.exp;

import java.util.List;

import com.toonalyst.domain.exp.ExpLogDTO;

public interface ExpDAO {

	public int expCodeToExpval(int code);				// 코드를 입력하여 해당 코드에 맞는 경험치 반환받음
	public void expUpdate(String id, int exp);			// 해당 아이디에 exp만큼의 경험치를 부여
	public void expLogInsert(ExpLogDTO eDto);			// 로그 DTO를 DB 로그테이블에 업로드
	public void totalexpToLevel(String id);				// 해당 아이디가 가지고 있는 누적 경험치에 비례해서 레벨을 변경함
	public List<ExpLogDTO> expLogList(String id);		// 해당 아이디의 전체 로그 리스트 반환

}
