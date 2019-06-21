package com.toonalyst.service.exp;

import java.util.Calendar;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.toonalyst.domain.exp.ExpLogDTO;
import com.toonalyst.persistence.exp.ExpDAO;

import lombok.extern.slf4j.Slf4j;

/*
 * 최초 작성 :19.06.20 최인준
 * 
 * 마지막 수정 : 19.06.20 최인준 
 */

@Slf4j
@Service
public class ExpServiceImpl implements ExpService {

	@Inject
	private ExpDAO eDao;
	
	@Override
	public void expUpdate(String id, int code, String reason, String ref) {
		int exp = 0;
		exp = eDao.expCodeToExpval(code);
		eDao.expUpdate(id, exp);
		eDao.expLogInsert(new ExpLogDTO(id, code, exp, reason, ref));
		eDao.totalexpToLevel(id);
	}
	
	@Override
	public void expUpdate(String id, int code, String reason, String ref, HttpSession session) {
		log.info("로그인 경험치 획득");
		
		String cal = (String) session.getAttribute("lastLoginExp"+id);
		Calendar today = Calendar.getInstance();	// 오늘 날짜
		String todaystr = today.get(Calendar.YEAR)+""+today.get(Calendar.MONTH)+today.get(Calendar.DATE);
		int exp = 0;
		
		log.info("lastLoginExp"+cal);
		
		if(cal==null||!cal.equals(todaystr)) {
			log.info("경험치 획득");
			session.removeAttribute("lastLoginExp"+id);
			session.setAttribute("lastLoginExp"+id, todaystr);
			exp = eDao.expCodeToExpval(code);
			eDao.expUpdate(id, exp);
			eDao.expLogInsert(new ExpLogDTO(id, code, exp, reason, ref));
		}else {
			log.info("경험치 획득 실패");
		}
		eDao.totalexpToLevel(id);
	}

}
