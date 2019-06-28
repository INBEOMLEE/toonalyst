<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/common.jsp" %>    
<%@ include file="include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.toonalyst_about {
    font-family:'Nanum Gothic';
    font-size: 16px;  
    width: 1180px;
    margin: 0 auto;
}
.toonalyst_about h2 {
    color: #FF6C36;
    margin-top: 0;
    margin-bottom: 15px;
}
.toonalyst_about h3 {
    font-size: 1.4em;
    color: #FF6C36;
    margin-top: 15px;
    margin-bottom: 15px;
    padding-bottom: 3px;
    border-bottom: 1px solid #ccc;
    clear: both;
}
.toonalyst_about h4 {
    font-size: 1.1em;
    color: #FF6C36;
    font-weight: bold;
    margin: 15px 0 5px 0;
}
.toonalyst_about p {
    margin: 0 0 10px 0;
    line-height: 1.5k;
}
.toonalyst_about dl {
    margin: 0 0 10px 0;
    width: 50%;
    float: left;
    padding-right: 20px;
    box-sizing: border-box;
}
.toonalyst_about dt {
    color: #FF6C36;
    font-weight: bold;
    margin-bottom: 5px;
    font-size: 14px;
}
.toonalyst_about dd {
    margin: 0 0 5px 0;
    line-height: 1.4;
}
.toonalyst_about > div {
    margin-bottom: 5px;
    padding: 38px 20px;
}
.toonalyst_intro {
    width: 100%;
    position: relative;
    background-color: #FF6C36;
    color: #fff;
    box-sizing: border-box;
}
.toonalyst_intro > .toonalyst_intro_left,.toonalyst_intro > .toonalyst_intro_right {
    width: 50%;
    float: left;
    padding: 15px 20px;
    text-align: center;
    box-sizing: border-box;
}
.toonalyst_intro > .toonalyst_intro_right {
    position: relative;
    height: 97px;
}
.toonalyst_intro > .toonalyst_intro_right > p {
    position: absolute;
    font-size: 32px;
    left: 140px;
    right: 0px;
    bottom: -12px;
}
.toonalyst_intro > div > img {
    width: 200px;
    height: auto;
}
.clearBoth2 {
    clear:both;
    height:0;
    overflow:hidden;
}
.fa-question{
	font-size: 17px;
}
</style>
</head>
<body>
<div class="toonalyst_about">
    <div class="toonalyst_intro">
    <div class="toonalyst_intro_left"></div>
    <div class="toonalyst_intro_right"><p>ABOUT TOONALYST</p></div>
        <div class="clearBoth2"></div>
	    </div>
	    <div>
	        <h2>WHAT IS THE TOONALYST <i class="fas fa-question"></i></h2>
	        <p>TOONALYST는 WEBTOON을 뜻하는 TOON과 분석가를 뜻하는 ANALYST의 합성어로 WEBTOON을 좀더 다채롭게 즐기기 위해 WEBTOON에 관련된 자료를 비교분석하여 제공하는 사이트</p>
	        <h3>사이트 소개</h3>
	        <p> 웹툰은 한국이 세계 최초로 만든 콘텐츠 플랫폼 으로써 기존의 만화책등은 서점에서 책을 구입하거나 만화방에서 책을 빌려야 볼수있는 
	        	접근환경을 웹에만 접근할수 있으면 누구나 손쉽게 즐길수 있게 만든 플랫폼이다.  웹툰을 제공하는 사이트는 포털이나 전문적으로 웹툰만을 제공하는
	        	사이트등 매우 다양하다. <strong>TOONALYST</strong> 는 웹툰플랫폼 제공업체중 <strong>빅4업체(네이버,레진,다음,카카오)</strong> 를 선정하여 해당 사이트들의 웹툰평점과 <strong>TOONALYST</strong>만의 독자적인 평점서비스를 제공한다.
	        	그리고 유저들이 자유롭게 의견을 나눌수 있는 자유게시판을 제공하여 자신의 추천하고 싶은 웹툰 혹은 아니면 맘에드는 등장주인공등 웹툰에 관련된 내용을 나눌수 있는 소통의 장을 열어놓았다. 
	        	그리고 좋아요 기능과 댓글기능도 제공하여 다채롭게 게시판을 즐길수 있다. 그리고 회원별 <strong>레벨업제도</strong>가 있어 게시판작성이나 댓글작성등 사이트에 많은 참여를 할수록 레벨이 올라갈수 있는 제도또한 제공된다.</p>        	              
	    </div>
	   	 <div>                   
	        <h3>사이트 기능 소개</h3>
	        <dl>
	            <dt>레벨업 제도</dt>
	            <dd>TOONALYST에서는 <strong>레벨업 제도</strong>를 통해 TOONALYST를 자주이용하는 유저님께 다양한 혜택을 드립니다. 레벨구간 1~25으로 유저의 경험치현황은 마이페이지에서 확인 가능합니다. 경험치에 대한 자세한 사항은 사이트등급부분 에서 확인하실수 있습니다.</dd>
	        </dl>
	        <dl>
	            <dt>자유게시판</dt>
	            <dd>TOONALYST의 게시판은 다양한 유저들과 소통 할수있는 게시판입니다. 댓글을 통해 게시글의 작성자와 소통할수 있고 맘에드는 게시글은 좋아요 버튼을 눌러 추천해주실도 있습니다. 그리고 게시글을 최신순,추천순,댓글순,조회순등 다양한 방법의 정렬을 제공하니 원하는 게시글또한 쉽게 찾아가실수 있습니다.</dd>
	        </dl>
       		<div class="clearBoth2"></div>
	        <dl>
	            <dt>자체평가 점수 제공</dt>
	            <dd>TOONALYST에서는 네이버,레진,다음,카카오 등에서 기본적으로 제공되는 <strong>평가(별점)</strong>도 제공하고 TOONALYST만의 자체적으로 제공되는 <strong>평가(별점)</strong> 또한 제공합니다.</dd>
	        </dl>
	        <dl>
	            <dt>Q&A 게시판</dt>
	            <dd>TOONALYST를 이용하시다 버그를 발견하시거나 아니면 TOONALYST에 긍정적인 피드백을 주고싶으실때 이용하는 게시판입니다.</dd>
	        </dl>
       		<div class="clearBoth2"></div>
	        <dl>
	            <dt>마이 페이지 제공</dt>
	            <dd>마이페이지는 기본적으로 회원님의 개인정보를 수정이나 삭제등을 할수있는 공간이나 지금까지 toonalyst의 <strong>활동내역</strong>을 쉽게 확인하거나, 하단에서 toonalyst에서 제공되는 게시판들의 베스트글들도 확인하실수 있습니다.</dd>
	        </dl>
	        <dl>
	            <dt>향후 추가해줄 예정</dt>
	            <dd>게시판 하단을 보면 지원하는 게시판일 경우 HOT, BEST 게시글만 볼 수 있는 버튼이 있습니다. HOT 게시물은 사람들이 많이 본 게시글만 골라서 보여주는 기능이며, BEST 게시글은 추천을 많이 받아 BEST방에 등록된 게시글을 게시판별로 보여주는 기능입니다. 사이트 메뉴에 BEST방에서는 모든 게시판에서 나온 BEST 게시글을 볼 수 있습니다.</dd>
	        </dl>
	         <h3>사이트 등급 설명</h3>                   
	        <dl>
	            <dt>농노</dt>
	            <dd>사이트중 가장점수가 낮은등급대의 유저를 말합니다.</dd>
	        </dl>
	        <dl>
	            <dt>평민</dt>
	            <dd>사이트중 가장점수가 낮은등급대의 유저를 말합니다.</dd>
	        </dl>
	       <div class="clearBoth2"></div>
	        <dl>
	            <dt>귀족</dt>
	            <dd>사이트중 가장점수가 낮은등급대의 유저를 말합니다.</dd>
	        </dl>
	        <dl>
	            <dt>왕족</dt>
	            <dd>사이트중 가장점수가 낮은등급대의 유저를 말합니다.</dd>
	        </dl>
	        <div class="clearBoth2"></div>
	        <dl>
	            <dt>성직자</dt>
	            <dd>사이트중 가장점수가 낮은등급대의 유저를 말합니다.</dd>
	        </dl>
	        <dl>
	            <dt>천룡인</dt>
	            <dd>사이트중 가장점수가 낮은등급대의 유저를 말합니다.</dd>
	        </dl>          
	     <div>        
	        <h3>개인정보처리방침</h3>
	        <h4>수집하는 개인정보의 항목 및 수집방법</h4>
	        <p>TOONALYST는 회원가입 및 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 개인정보를 수집하고 있습니다.<br>- 해당 사항: 이름, 로그인ID, 비밀번호, 자택 전화번호, 자택 주소, 전화번호, 이메일 등</p>
	        <p>서비스 이용과정이나 처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>- 해당 사항: 아이피 주소, 서비스 이용 기록, 불량 이용 기록 등</p>
	        <p>이벤트 진행 시엔 이벤트 진행을 위한 최소한의 정보를 추가로 수집하고 있습니다.<br>- 해당 사항: 이름, 전화번호, 주소 등</p>
	        <h4>수집한 개인정보의 공유 및 제공</h4>
	        <p>TOONALYST는 기본적으로 제삼자에게 개인정보를 제공하지 않습니다. 다만, 사이트 내 이벤트 참여시 제삼자에게 개인정보를 제공하는 것에 동의한 것으로 간주하며, 진행을 위해 제삼자에게 개인정보(이름, 전화번호, 주소 등)를 제공할 수 있습니다.</p>
	        <h4>개인정보의 수집 및 이용목적</h4>
	        <p>가. 아이디, 비밀번호, 이메일 주소 등: 회원 식별, 중복가입 확인, 불량회원의 부정 이용 방지와 비인가 사용 방지 등에 사용됩니다.</p>
	        <p>나. 아이피 주소, 서비스 이용 기록, 불량 이용 기록 등: 불량회원의 부정 이용 방지와 비인가 사용 방지, 통계학적 분석 등에 사용됩니다.</p>
	        <p>다. 이름, 전화번호, 주소 등: 이벤트 진행 등을 위해 사용됩니다.</p>
	        <h4>개인정보의 보유 및 이용 기간</h4>
	        <p>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 바로 파기합니다. 단, 불량 이용 기록, 게시물 작성 시 등록되는 개인정보(아이피 주소 등), 이미지 업로드 시 등록되는 개인정보(아이피 주소 등)는 5년간 보관된 후 파기 처리 됩니다.</p>
	        <h3>개인정보처리방침에 대한 안내</h3>
	        <h4>개인정보보호 관련</h4>
	        <p>TOONALYST는 회원가입시 중복가입 방지 등을 위해 이메일 주소, 아이피 주소등 기본정보만 수집하고 있고, 사이트 운영자만 확인할 수 있습니다. 또한, 모든 글/댓글은 익명으로 되어있으므로 다른 회원에 의해 유출되는 개인정보는 전혀 없습니다.</p>
	        <p>TOONALYST 내 글/댓글은 사이트 이용약관에 의거한 불량회원의 악의적 부정 이용방지, 비인가 사용방지 등을 위해 5년간 보관하며, 이는 사이트 운영자만이 관리 할 수 있습니다. 다만, 글/댓글에 개인정보(성명과 주민등록번호, 휴대폰 번호 등)가 있는 경우 그 부분은 개인의 요청으로 삭제될 수 있습니다.</p>
	        <p>TOONALYST는 법률의 규정 또는 수사목적으로 법령에 정해진 절차와 방법에 따른 수사기관의 요구에 의한 경우와 이벤트 진행을 제외하고, 어떤 상황에서도 이용자의 개인정보를 이용하거나 외부에 공개하지 않습니다.</p>
	        <h4>관련 법령 안내</h4>
	        <p>TOONALYST는 통신비밀 보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정 및 정보통신부가 제정한 개인정보보호 지침을 준수합니다.</p>
	    </div>
	    <div>
	       <h2>이미지 업로드 서비스 이용약관 안내</h2>
	       <h3>서비스 이용약관</h3>
	       <h4>약관 동의</h4>
	       <p>TOONALYST에 이미지 업로드를 진행하게 되면 본 이용약관에 동의하는 것으로 간주합니다. 이용약관에 동의하지 않으신다면 이미지 업로드 서비스를 이용하실 수 없습니다.</p>
	       <h4>약관 변경</h4>
	       <p>필요한 경우 이 약관은 사전 통지 없이 변경될 수 있습니다. 변경된 약관은 즉시 홈페이지에 기재되며, 그 시점부터 효력이 발생합니다. 이러한 변경 내용은 개별적으로 통지할 수 없기 때문에, 본 서비스를 이용할 때에는 수시로 최신의 이용약관을 참조하시기 바랍니다.</p>
	       <h4>서비스 이용 및 제공</h4>
	       <p>본 서비스는 TOONALYST에 공개된 글에 첨부하기 위한 용도로만 사용할 수 있습니다. 이용약관을 위배하는 경우 서비스 제공을 중단할 수 있습니다.</p>
	       <p>는 본 서비스의 정상적인 제공을 위해 최선을 다합니다. 본 서비스는 사전 통지 없이 서비스의 전부 또는 일부 내용을 변경할 수 있으며, 그 제공을 중단할 수 있습니다.</p>
	       <h4>금지 사항</h4>
	       <p>서비스를 이용하기 위해서는 다음에 기재된 행위를 해서는 안 됩니다.</p>
	       <p>가. 제삼자의 지적재산권, 프라이버시 등의 법적 권리 혹은 계약상의 권리를 침해하는 이미지를 업로드하는 행위.</p>
	       <p>나. 과도하게 폭력적인 이미지, 노골적인 성적 이미지, 인종, 국적, 신조, 성별, 사회적 신분과 가문 등에 관하여 차별하는 이미지, 자살, 자상 이미지, 약물 남용을 유인 또는 조장하는 이미지, 기타 반사회적인 내용을 포함하거나 타인에게 불쾌감을 주는 이미지를 업로드하는 행위.</p>
	       <p>다. 동일한 이미지를 반복해서 올리거나 TOONALYST에 글에 첨부하기 위한 용도가 아닌 다른 용도로 이미지를 업로드하는 행위.</p>
	       <p>라. 현행 법령 및 기타 이용약관을 위배하는 행위.</p>
	       <h4>면책 사항</h4>
	       <p>TOONALYST는 본 서비스의 품질을 보장하지 않으며, 서비스를 제공할 의무를 갖지 않습니다.</p>
	       <p>TOONALYST는 본 서비스로 인해 발생한 모든 손해에 대해 일체의 책임을 지지 않습니다. 모든 이미지는 업로드한 당사자에게 그 책임이 있습니다.</p>
	       <h4>연락 방법</h4>
	       <p>본 서비스와 관련해 의견이 있거나 이용약관을 위배하는 행위를 발견한 경우에는 <a href="#" target="_blank">문의+신고</a> 게시판이나 문의메일을 이용해 주시기 바랍니다.</p>
	    </div> 
   </div> 
</div>
<%@ include file="include/footer.jsp" %>     
</body>
</html>