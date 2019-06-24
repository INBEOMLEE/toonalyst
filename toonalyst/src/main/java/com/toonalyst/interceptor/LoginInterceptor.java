
package com.toonalyst.interceptor;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.FlashMapManager;
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
			log.info(">>>>>>>>로그인 해주세요!!!!!!!!!!!!!!!!");			
			
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
