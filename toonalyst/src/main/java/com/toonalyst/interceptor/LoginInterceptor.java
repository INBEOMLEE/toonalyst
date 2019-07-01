
package com.toonalyst.interceptor;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.web.servlet.FlashMap;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

import lombok.extern.slf4j.Slf4j;
@Slf4j
public class LoginInterceptor extends HandlerInterceptorAdapter{

	// 메인액션 실행되기전! preHandle은  boolean 자료형이니 true와 false만 들어올수있음.
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// session체크, 값이 있으면 통과,
		// 없으면 돌려보냄(원래페이지로 가서 모달창 키고 에러메시지 출력!)
		HttpSession session = request.getSession(); 
		if (session.getAttribute("loginUser") == null) {
			log.info(">>>>>>>> 인터셉터 : 로그인 해주세요");			
		// 로그인이 필요한 페이지에서 로그아웃시 로그인페이지로 이동후 message에 nologin을 보내 경고창을 뜨게함.	
		    response.sendRedirect(request.getContextPath() + "/member/login");
		    FlashMap flashMap = RequestContextUtils.getOutputFlashMap(request); 
			flashMap.put("message", "nologin");
			RequestContextUtils.saveOutputFlashMap(request.getContextPath() + "/member/login", request, response);			
		    return false; 
		} else {
			return true; 
		}
	}

	// 메인액션 실행된후.	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		super.postHandle(request, response, handler, modelAndView);
	}

}
