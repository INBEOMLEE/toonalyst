package com.toonalyst.persistence.exp;

import java.util.List;

import com.toonalyst.domain.exp.ExpLogDTO;

public interface ExpDAO {

	public int expCodeToExpval(int code);
	public void expUpdate(String id, int exp);
	public void expLogInsert(ExpLogDTO eDto);
	public void totalexpToLevel(String id);
	public List<ExpLogDTO> expLogList(String id);

}
