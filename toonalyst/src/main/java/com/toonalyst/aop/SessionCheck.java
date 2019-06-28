package com.toonalyst.aop;

import java.util.Arrays;
import java.util.Enumeration;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.domain.member.MemberDTO;
import com.toonalyst.service.exp.ExpService;
import com.toonalyst.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

// 로그 수집 작업을 하려면 모든 메서드에 해야 함
// 로그 수집은 중요한 업무이지만 핵심적인 업무는 아니고 공통적인 업무에 해당 됨
// 공통적인 업무는 모든 class의 모든 method에 작성하지말고
// Advice에 모아서 작성하고 세부적인 코드에서는 핵심 업무에 집중하도록 처리

@Component // 스프링 beans로 등록되기 위한 설정
@Aspect    // AOP bean - 공통 업무를 지원하는 코드
@Slf4j
public class SessionCheck {
    // 포인트컷 - 실행 시점,
    // Around ( 메서드 실행 전후 )
    // Before ( 메서드 실행 전 )
    // After ( 메서드 실행 후 )
	
	@Inject
	private ExpService expservice;
	@Inject
	private MemberService memservice;
    
	@Around("execution(* com.toonalyst.service.board..*Impl.*(..))")
    public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
    	
		String method = joinPoint.getSignature().getName(); // 실행된 메서드의 이름을 찾음
        System.out.println("+++++++++++++++++++++++++++" + method);
        
        
				
        if(method.equals("register")) {
        	
        	System.out.println("/////////////////////////////////////");
    		System.out.println(Arrays.toString(joinPoint.getArgs())); // getArgs()는 매개변수 담아줌, 반환타입 object
    		Object[] arr = joinPoint.getArgs();
    		
    		for (Object object : arr) {
				System.out.println(">>>>>>>★★★★★★★★>>>>>>>>>>>>>>>>>>>" + object);
			}
    		
    		BoardDTO bDto = (BoardDTO) arr[0];
    		System.out.println(">>>>>>>>>>>" + bDto.getBwriter());
    		
    		
    		String id = bDto.getBwriter();
        	HttpSession session = (HttpSession) arr[1];
        	
	    	
		    expservice.expUpdate(id, 1, "게시글 등록 경험치 부여", "");
	        memservice.boardCntUpdate(id, session);
	        
	        System.out.println("/////////////////////////////////////");
        } else if(method.equals("delete")) {
        	System.out.println("/////////////////////////////////////");
    		System.out.println(Arrays.toString(joinPoint.getArgs()));
    		Object[] arr = joinPoint.getArgs();
    		
    		HttpSession session = (HttpSession) arr[2];
    		MemberDTO mDto = (MemberDTO) session.getAttribute("loginUser");
    		
    		expservice.expUpdate(mDto.getId(), 2, "게시물 삭제 경험치 차감", "");
		    memservice.boardCntUpdate(mDto.getId(), session);
		    
		    System.out.println("/////////////////////////////////////");
        } else if (method.equals("create")) {
	    	System.out.println("/////////////////////////////////////");
			System.out.println(Arrays.toString(joinPoint.getArgs()));
			Object[] arr = joinPoint.getArgs();
			CommentDTO cDto = (CommentDTO) arr[0];
			HttpSession session = (HttpSession) arr[1];
   		
    		expservice.expUpdate(cDto.getCwriter(), 3, "댓글등록 경험치부여", ""); 		
    	    memservice.commentCntUpdate(cDto.getCwriter(), session);
			
		}
        	
        	
        	
        	
    	/*
        // 메서드 시작시간
        long start = System.currentTimeMillis();
        */
        
        // joinPoint.proceed(); 줄을 기준으로
        // ↑ 위에가 호출 전
        // ↓ 아래가 호출 후
        Object result = joinPoint.proceed(); // 핵심업무 실행
        
        // 호출한 클래스 이름
        String type = joinPoint.getSignature().getDeclaringTypeName();
        
        
        // 호출한 클래스의 이름에 따라 if문을 타고 출력
        String name = "";
        if(type.indexOf("Controller") > -1) {
            name = "Controller \t:";
        } else if(type.indexOf("Service") > -1) {
            name = "ServiceImpl \t:";
        } else if(type.indexOf("DAO") > -1) {
            name = "DaoImpl \t:";
        }
        
        /*
        // 호출한 클래스, method 정보
        log.info(name+type+"."+joinPoint.getSignature().getName());
        // method에 전달되는 매개변수들
        log.info(Arrays.deepToString(joinPoint.getArgs()));
        // 메서드 끝나는 시간
        long end = System.currentTimeMillis();
        long time = end - start;
        log.info("실행시간 : " + time);
        */
          
        return result;
    }
}