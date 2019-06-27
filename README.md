# toonalyst
Team Project toonalyst ( Spring )

프로젝트 소개
- 다양한 웹툰 플랫폼의 평점 등의 자료를 파싱하여 수집한 후에 자체적으로 평가 시스템을 도입하여 웹툰을 분석하는 웹 애플리케이션.
- 팀원 : 유수지, 최인준, 이인범, 조기훈
- 개발환경
  - OS : WINDOWS7 64bit
  - DATABASE : oracle 11g
  - TOOLS : STS, Sourcetree, sql developer
- 구현기술
  - FRONT END : HTML5, CSS3, jQuery, Ajax, Json
  - BACK END : SPRING legacy
  - library : Jsoup, Selenium 
- 프로젝트 기능  
  - 회원관리 : 회원가입, 수정, 탈퇴, ID·PW찾기
  - 랭킹기능 : 실시간 랭킹, 플랫폼별 랭킹, 요일별 랭킹
  - 게시판 : 공지사항, 질문게시판(Q&A), 자유게시판 3가지 종류
              - 게시글 등록, 수정, 삭제
              - 정렬, 검색, 페이지네이션
              - 좋아요, 조회수 증가
  - 외부정보수집 : Scheduler를 사용하여 일정시간마다 각 플랫폼에서 필요정보를 Jsoup·Selenium으로 파싱
  - 사용자 포인트관리 : AOP를 사용하여 로그인, 게시물 등록·삭제, 댓글 등록·삭제 시 각 계정에 포인트 부여·차감
  - 접근통제 : Interceptor를 사용하여 인증된 사용자만이 적합한 접근방식으로 페이지 이동
