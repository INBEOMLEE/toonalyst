package com.toonalyst.aop;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.toonalyst.domain.board.BoardDTO;
import com.toonalyst.domain.board.CommentDTO;
import com.toonalyst.domain.member.MemberDTO;
import com.toonalyst.service.board.CommentService;
import com.toonalyst.service.exp.ExpService;
import com.toonalyst.service.member.MemberService;

// 로그 수집 작업을 하려면 모든 메서드에 해야 함
// 로그 수집은 중요한 업무이지만 핵심적인 업무는 아니고 공통적인 업무에 해당 됨
// 공통적인 업무는 모든 class의 모든 method에 작성하지말고
// Advice에 모아서 작성하고 세부적인 코드에서는 핵심 업무에 집중하도록 처리

@Component // 스프링 beans로 등록되기 위한 설정
@Aspect    // AOP bean - 공통 업무를 지원하는 코드
public class GivingPoints {
    // 포인트컷 - 실행 시점,
    // Around ( 메서드 실행 전후 )
    // Before ( 메서드 실행 전 )
    // After ( 메서드 실행 후 )
	
	@Inject
	private ExpService expService;
	@Inject
	private MemberService memService;
	@Inject
	private CommentService comService;
    
	@Around("execution(* com.toonalyst.service.board.BoardServiceImpl.*(..))")
    public Object boardAOP(ProceedingJoinPoint joinPoint) throws Throwable {
    	
		String method = joinPoint.getSignature().getName(); // 실행된 메서드의 이름을 찾음
		String type = joinPoint.getSignature().getDeclaringTypeName();
		System.out.println("++++++++++++ " + type + " 의 " + method + " 메서드가 실행되었습니다 " + "++++++++++++");
		
        if(method.equals("register")) {
    		Object[] arr = joinPoint.getArgs();
    		BoardDTO bDto = (BoardDTO) arr[0];
    		String id = bDto.getBwriter();
        	HttpSession session = (HttpSession) arr[1];
		    expService.expUpdate(id, 1, "게시글 등록 경험치 부여", "");
	        memService.boardCntUpdate(id, session);
        } else if(method.equals("delete")) {
    		Object[] arr = joinPoint.getArgs();
    		HttpSession session = (HttpSession) arr[2];
    		MemberDTO mDto = (MemberDTO) session.getAttribute("loginUser");
    		expService.expUpdate(mDto.getId(), 2, "게시물 삭제 경험치 차감", "");
		    memService.boardCntUpdate(mDto.getId(), session);
        }  else if(method.equals("answer")) {
        	Object[] arr = joinPoint.getArgs();
        	BoardDTO bDto = (BoardDTO) arr[0];
        	String id = bDto.getBwriter();
        	HttpSession session = (HttpSession) arr[1];
        	expService.expUpdate(id, 1, "답글 등록 경험치 부여", "");
  	        memService.boardCntUpdate(id, session);
        }
        Object result = joinPoint.proceed(); // 핵심업무 실행
        return result;
    }
	
	@Around("execution(* com.toonalyst.service.board.CommentServiceImpl.*(..))")
    public Object commentAOP(ProceedingJoinPoint joinPoint) throws Throwable {
		String method = joinPoint.getSignature().getName(); // 실행된 메서드의 이름을 찾음
		String type = joinPoint.getSignature().getDeclaringTypeName();
        System.out.println("++++++++++++ " + type + " 의 " + method + " 메서드가 실행되었습니다 " + "++++++++++++");
        
        if(method.equals("create")) {
			Object[] arr = joinPoint.getArgs();
			CommentDTO cDto = (CommentDTO) arr[0];
			HttpSession session = (HttpSession) arr[1];
    		expService.expUpdate(cDto.getCwriter(), 3, "댓글등록 경험치부여", ""); 		
    	    memService.commentCntUpdate(cDto.getCwriter(), session);
        } else if(method.equals("delete")) {
        	Object[] arr = joinPoint.getArgs();
        	int cno = (int) arr[0];
        	String id = (String) arr[1];
        	HttpSession session = (HttpSession) arr[3];
        	expService.expUpdate(comService.read(cno).getCwriter(), 4, "댓글 삭제 경험치 차감", "");
        	memService.commentCntUpdate(id, session);
        }
		Object result = joinPoint.proceed();
		return result;
	}
	
	@Around("execution(* com.toonalyst.service.member.MemberServiceImpl.*(..))")
    public Object loginAOP(ProceedingJoinPoint joinPoint) throws Throwable {
    	
		String method = joinPoint.getSignature().getName(); // 실행된 메서드의 이름을 찾음
		String type = joinPoint.getSignature().getDeclaringTypeName();
		System.out.println("++++++++++++ " + type + " 의 " + method + " 메서드가 실행되었습니다 " + "++++++++++++");
        
        if(method.equals("login")) {
    		Object[] arr = joinPoint.getArgs();
    		MemberDTO mDto = (MemberDTO) arr[0];
    		HttpSession session = (HttpSession) arr[1];
    		expService.expUpdate(mDto.getId(), 0, "로그인 경험치", "", session);
        } 
        Object result = joinPoint.proceed(); // 핵심업무 실행
        return result;
    }
	
}