<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
/* 전체 */
.section_outline {
	position: relative;
	background-color: #fafafa;
	width: 100%;
}
.section_inline {
	width: 1180px;
	margin: 0 auto;
}
.join_input {
	width: 440px;
	margin: 0 auto;
	padding: 30px 0 30px;
}
/* 상단 타이틀 */
.join_title {
	height: 70px;
	line-height: 70px;
	text-align: center;
	margin-bottom: 25px;
	border-bottom: 1px solid #d5d5d5;
}
/* 입력 부분 */
.con_title {
	font-weight: 800;
	font-size: 18px;
	color: #191919;
	margin-bottom: 25px;
	display: inline-block;
}
.form_input {
	height: 58px;
	padding: 4px 20px;
	border-width: 0 0 0 1px;
	border:1px solid #d5d5d5;
	font-size: 16px;
	width: 100%;
	border-left: 0px;
	background: #fff;
	outline: none;
}
.box_con_style {
	margin-bottom: 10px;
	position: relative;
	padding-left: 60px; 
}
/* 주소 input */
#sample6_postcode {
	position: relative;
}
#addr_btn {
	position: absolute;
	top: 0;
	right: 0;
	height: 58px;
	padding: 4px 20px;
	border-width: 0 0 0 1px;
	border:1px solid #d5d5d5;
	font-size: 16px;
	width: 35%;
	color: #808080;
	outline: none;
	cursor: pointer;
}
.addr_style {
	height: 58px;
	padding: 4px 20px;
	border-width: 0 0 0 1px;
	border:1px solid #d5d5d5;
	font-size: 16px;
	width: 100%;
	/* border-top: 0px; */
	background: #fff;
	margin-top: 5px;
	outline: none;
}
/* 주소 input 끝 */
.chk {
	position: absolute;
	top: 0;
	left: 0;
	width: 60px;
	height: 58px;
	display: flex;
	border: 1px solid #d5d5d5; 
	box-sizing: border-box;
	background: #fff;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	color: #d5d5d5;
}
.join_err_msg {
	display: none;
	padding: 10px;
	margin-bottom: 10px;
	color: tomato;
	letter-spacing: -1;
	font-size: 15px;
	color: #FF3636;
}
/* 약관동의 부분 */
.constract_line {
	width: 440px;
	margin: 20px 0;
}
.title {
	margin-bottom: 10px;
	font-size: 18px;
	font-weight: 800;
	color: #191919;
	display: inline-block;
}
#agree_check {
	display: none;
}
.agree_check {
	float: right;
}
#check_btn {
	display: inline-block;
    width: 26px;
    height: 26px;
    margin-top: -3px;
    border-radius: 100%;
    background-size: 100%;
    vertical-align: top;
    cursor: pointer;
}
/* 이 .check_btn은 label */
.check_btn {
	cursor: pointer;
}
.check_off {
	 background: url(${path}/resources/img/check_off.png) no-repeat;
}
.check_on {
	 background: url(${path}/resources/img/check_on.png) no-repeat;
}
.constract_input_box {
	margin: 3px 0 0 0;
	height: 58px;
}
.join_btn {
	width: 440px;
	height: 58px;
}
.btn_agree {
	width: 440px;
	height: 58px;
	border: 1px solid #d5d5d5;
	background: #d5d5d5;
	color: white;
	font-size: 18px;
	letter-spacing: -1;
	font-weight: 600;
	cursor: pointer;
	outline: none;
}
.down_btn {
	position: absolute;
	top: 0;
	right: 0;
	width: 60px;
	height: 58px;
	display: flex;
	border: 1px solid #d5d5d5;
	border-left: none; 
	box-sizing: border-box;
	background: #fff;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	color: #d5d5d5;
	cursor: pointer;
}
.constract_content {
	width: 440px;
	height: 0px;
	border: none;
	box-sizing: border-box;
	background: #fff;
	display: block;
	overflow: auto;
	transition: .5s;
}
.constract_content > div{
	width: 420px;
	padding: 4px 20px;
	box-sizing: border-box;
}
.constract_box {
	cursor: default;
}
.law_contents p, strong, li {
	font-size: 13px;
}
.tbl_row {
	table-layout: fixed;
	width: 97%;
	border-top: 1px solid #e0e0e0;
	border-collapse: collapse;
	border-spacing: 0;
	margin: 5px 5px;
}
.tbl_row th {
	padding: 15px 0 15px 10px;
	border-bottom: 1px solid #e0e0e0;
	text-align: left;
	vertical-align: middle;
	font-size: 13px;
	width: 35%;
	text-align: center;
}
.tbl_row td {
	padding: 15px 10px;
	border-bottom: 1px solid #e0e0e0;
	vertical-align: middle;
	word-break: break-all;
	word-wrap: break-word;
	font-size: 11px;
}
.tal {
	text-align: left;
}
.hidden {
	visibility: hidden;
}
</style>
</head>
<body>
	<section>
		<div class="section_outline">
			<div class="section_inline">
				<div class="join_input">
					<!-- 타이틀 -->
					<div class="join_title">
					 	<h2>회원 정보 입력</h2>
					</div>
					<form action="${path}/member/create" method="POST" name="frm_mem" id="frm_mem">
						<!-- 입력부분 -->
						<div class="join_content">
							<span class="con_title">기본정보입력(필수)</span>
							<div class="box">
								<div class="box_id box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_id" maxlength="16" name="join_id" class="form_input" placeholder="아이디">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_pw box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="password" id="join_pw" name="join_pw" class="form_input" placeholder="비밀번호">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_rpw box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="password" id="join_rpw" name="join_rpw" class="form_input" placeholder="비밀번호 재확인">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_name box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_name" name="join_name" class="form_input" placeholder="이름">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_email box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_email" name="join_email" class="form_input" placeholder="이메일">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_phone box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_phone" name="join_phone" class="form_input" placeholder="전화번호">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_addr box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" name="zipcode" id="sample6_postcode" class="addr_btn form_input join_zipcode" readonly="readonly" placeholder="우편번호"> 
									<input type="button" id="addr_btn" onclick="sample6_execDaumPostcode()" class="btn_normal" value="우편번호 찾기"><br>
									<input type="text" name="addr1" id="sample6_address" placeholder="주소" class="addr_btn addr_style join_addr1" readonly="readonly"><br> 
									<input type="text" name="addr2" id="sample6_detailAddress" class="addr_btn addr_style join_addr2" placeholder="상세항목">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
							</div>
						</div>
						<!-- 약관동의 부분 -->
						<div class="constract_line">
							<p class="title">약관동의</p>
							<div class="agree_check">
								<label for="agree_check" class="check_btn">	
									<input type="checkbox" id="agree_check"><b>전체 동의 </b>
									<span id="check_btn" class="check_off"></span>
								</label>
							</div>
							<div class="box_name box_con_style constract_input_box">
								<span class="chk"><i class="fas fa-check"></i></span>
								<input type="text" class="form_input constract_box" value="이용약관 동의 (필수)" readonly="readonly">
								<span class="down_btn"><i class="fas fa-chevron-down"></i></span>
							</div>
							<div class="constract_content">
								<div class="law_contents">
								    <h3>제1장 총칙</h3>
									<br>
								    <h4>제1조 목적</h4>
								    <p>본 약관은 주식회사 TOONALYST(이하 회사라 합니다)가 운영하는 디지털 콘텐츠 서비스 플랫폼인 TOONALYST(이하 TOONALYST라 합니다)에서 제공하는 웹툰 및 기타 서비스(이하 서비스라 합니다)의 이용과 관련하여 회사와 회원 간의 권리, 의무 및 기타 제반 사항을 정하는 것을 그 목적으로 합니다.</p>
								    <br>
								    <h4>제2조 용어의 정의</h4>
								    <p> 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
								    <ol>
								        <li>회원이라 함은 본 약관에 따라 회사와 이용계약을 체결하고 회사가 제공하는 서비스를 이용하는 자를 의미합니다.</li>
								        <li>비회원이라 함은 회원 자격을 취득하지 않고 회사가 제공하는 서비스를 이용하는 자를 의미합니다.</li>
								        <li>아이디라 함은 회원의 식별, 회원의 서비스이용을 위하여 회원이 선정하고 회사가 승인한 문자, 숫자의 조합을 의미합니다. 회원이 제3의 사업자가 제공하는 서비스 이용 과정에서 생성한 아이디를 서비스에 연동하여 사용하는 경우 해당 아이디를 포함합니다.</li>
								        <li>비밀번호라 함은 회원의 정보보호 및 회원 확인을 위해 회원이 설정한 문자, 숫자의 조합 등을 의미합니다.</li>
								        <li>콘텐츠라 함은 회사가 TOONALYST를 통하여 회원 또는 비회원에게 제공하는 콘텐츠를 의미합니다.</li>
								        <li>이용자 콘텐츠라 함은 회원이 TOONALYST를 이용하는 과정에서 TOONALYST 내에 게시한 부호, 문자, 이미지, 음성, 음향, 화상, 동영상 등 정보 형태의 글, 그림, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</li>
								    </ol>
								    <p> 본 조에서 정의하지 않은 용어에 대해서는 관계 법령, 안내, 회사의 서비스 정책 등에서 정하는 바에 의하며, 이에 정하지 않은 것은 일반적 상 관례에 의합니다.</p>
									<br>
								    <h4>제3조 약관의 게시, 효력, 변경</h4>
								    <p><strong> 회사는 본 약관의 내용을 회원이 알 수 있도록 서비스 초기화면 내 또는 그 연결화면에 게시합니다. 이 경우 본 약관의 내용 중 서비스의 중단, 청약철회, 환급, 계약의 해제 또는 해지, 회사의 면책사항 등과 같은 중요한 내용은 굵은 글씨, 색채, 부호 등으로 명확하게 표시하거나 별도의 연결화면 등을 통하여 회원이 알아보기 쉽게 처리합니다.</strong></p>
								    <p> 회사는 [정보통신망 이용촉진 및 정보보호 등에 관한 법률], [전자상거래 등에서의 소비자 보호에 관한 법률], [약관의 규제에 관한 법률], [콘텐츠산업 진흥법] 등 관련 법령을 위반하지 않는 범위 내에서 본 약관의 내용을 개정할 수 있습니다.</p>
								    <p> 회사가 본 약관을 개정하는 경우에는 적용 일자, 개정내용, 개정 사유 등을 명시하여 최소한 그 적용일 7일 이전부터 TOONALYST 홈페이지 내 또는 그 연결화면에 게시하여 회원에게 공지합니다. 다만, 변경된 내용이 회원에게 불리하거나 중대한 사항의 변경인 경우에는 그 적용일 30일 이전까지 본문과 같은 방법으로 공지하고, 제10조 제1항의 방법으로 회원에게 통지합니다.</p>
								    <p><strong> 회사는 본 약관을 개정할 경우 개정약관에 대한 공지 후 개정약관에 대한 회원의 동의 여부를 확인합니다. 회사가 본 약관의 개정과 관련하여 제3항의 공지 또는 통지를 할 경우 회원이 개정약관에 대하여 동의 또는 거부의 의사표시를 하지 않으면 동의한 것으로 볼 수 있다는 내용도 함께 공지 또는 통지할 수 있으며, 이 경우 회원이 개정약관의 시행일까지 거부의 의사표시를 하지 않는다면 개정약관에 동의한 것으로 봅니다. 회원이 개정약관에 대하여 동의하지 않는 경우 회사 또는 회원은 본 약관에 따른 이용계약을 해지할 수 있습니다.</strong></p>
									<br>
								    <h4>제4조 약관 외 준칙</h4>
								    <p>이 약관에서 정하지 않은 사항과 이 약관의 해석에 관하여는 [정보통신망 이용촉진 및 정보보호 등에 관한 법률], [전자상거래 등에서의 소비자 보호에 관한 법률], [약관의 규제에 관한 법률], [콘텐츠산업 진흥법] 등 관련 법령 또는 상 관례에 따릅니다.</p>
									<br>
								    <h4>제5조 회사 정보 등의 제공</h4>
								    <p>회사는 다음의 각 호의 사항을 TOONALYST 홈페이지(애플리케이션의 경우 서비스 초기화면 또는 연결화면)에 게시하여, 이용자가 이를 쉽게 알 수 있도록 합니다. 다만, 개인정보 처리방침과 약관의 내용은 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</p>
								    <ol>
								        <li>상호 및 대표자의 성명</li>
								        <li>영업소 소재지 주소 및 전자우편 주소</li>
								        <li>전화번호</li>
								        <li>사업자등록번호, 통신판매업 신고번호</li>
								        <li>개인정보 처리방침</li>
								        <li>이용약관</li>
								        <li>고객센터</li>
								    </ol>
									<br>
								    <h4>제6조 운영정책</h4>
								    <p><strong> 회사는 본 약관의 적용을 위하여 필요한 사항 또는 약관에서 구체적 범위를 정하여 위임한 사항에 대하여 별도의 세부 정책(서비스 정책, 운영정책 등 제목이나 형식은 불문하며, 이하 운영정책이라 합니다)을 정할 수 있습니다. 운영정책은 본 약관의 일부를 구성합니다.</strong></p>
								    <p> 회사는 운영정책의 내용을 회원이 알 수 있도록 TOONALYST 내에 게시합니다.</p>
								    <p> 운영정책을 개정하는 경우에는 제3조 제3항의 절차에 따릅니다. 다만, 운영정책 개정 내용이 다음 각 호의 어느 하나에 해당하는 경우에는 본 조 제2항의 방법으로 사전에 공지합니다.</p>
								    <ol>
								        <li>본 약관에서 구체적으로 범위를 정하여 위임한 사항을 개정하는 경우</li>
								        <li>회원의 권리, 의무와 관련 없는 사항을 개정하는 경우</li>
								        <li>운영정책의 내용이 본 약관에서 정한 내용과 근본적으로 다르지 않고, 회원이 예측할 수 있는 범위 내에서 운영정책을 개정하는 경우</li>
								    </ol>
									<br>
								
								    <h3>제2장 이용계약의 체결, 개인정보의 관리</h3>
									<br>
								    <h4>제7조 회원가입</h4>
								    <p> 본 약관에 따른 이용계약은 회원이 되고자 하는 자(이하 가입 신청자라 합니다)가 본 약관의 내용에 대하여 동의를 한 다음, 서비스 이용 신청을 하고, 회사가 그 신청에 대해서 승낙함으로써 체결됩니다.</p>
								    <p> 회사는 가입 신청자의 신청에 대하여 승낙함을 원칙으로 합니다. 다만, 회사는 다음 각 호의 어느 하나에 해당하는 이용 신청에 대해서는 승낙을 거절할 수 있습니다.</p>
								    <ol><br>
								        <li>가입 신청자가 본 약관에 의하여 이전에 회원 자격을 잃은 적이 있는 경우. 다만, 회사의 재가입 승낙을 얻는 경우에는 예외로 합니다.</li>
								        <li>등록 내용에 허위, 기재 누락, 오기가 있는 경우</li>
								        <li>만 14세 미만의 아동이 가입을 신청하는 경우</li>
								        <li>사회의 안녕과 질서 또는 미풍양속을 저해할 목적으로 신청한 경우</li>
								        <li>부정한 용도로 TOONALYST를 이용하고자 하는 경우</li>
								        <li>영리를 추구할 목적으로 TOONALYST를 이용하고자 하는 경우</li>
								        <li>본 약관에 어긋나거나 위법 또는 부당한 이용 신청임이 확인된 경우</li>
								        <li>그 밖에 각 호에 준하는 사유로서 승낙이 부적절하다고 판단되는 경우</li>
								    </ol><br>
								    <p> 본 약관에 따른 이용계약의 성립 시기는 회사가 회원 가입의 완료를 신청 절차 상에서 표시한 시점으로 정합니다.</p>
								    <p> 회사는 다음 각 호의 어느 하나에 해당하는 경우 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.</p>
								    <ol><br>
								        <li>회사의 설비에 여유가 없거나, 기술적 장애가 있는 경우</li>
								        <li>서비스 상의 장애 또는 결제수단 등의 장애가 발생한 경우</li>
								        <li>그 밖에 각 호에 준하는 사유로서 승낙이 부적절하다고 판단되는 경우</li>
								    </ol><br>
								
								    <h4>제8조 개인정보의 보호</h4>
								    <p><strong> 회사는 관련 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력하며, 개인정보의 보호 및 사용에 대해서는 관련 법령 및 회사의 개인정보 처리방침에 따릅니다. 다만, 회사가 제공하는 서비스 이외에 TOONALYST에 링크된 제3자의 서비스에서는 회사의 개인정보 처리방침이 적용되지 않습니다.</strong></p>
								    <p> 회사는 관련 법령에 의해 관련 정부 기관, 법원, 수사기관 등의 요청이 있는 경우를 제외하고는 회원의 개인정보를 본인의 동의 없이 타인에게 제공하지 않습니다.</p>
								    <p> 회사는 회원의 귀책사유로 개인정보가 유출되어 발생한 피해에 대하여 책임을 지지 않습니다.</p>
								    <p> [정보통신망 이용촉진 및 정보보호 등에 관한 법률]의 내용에 따라, TOONALYST에 마지막으로 접속한 시점으로부터 1년 이상 지난 아이디 및 이와 관련된 개인정보는 파기되거나, 휴면 처리되어 해당 아이디 및 이와 관련된 개인정보가 분리 보관될 수 있습니다. 휴면 처리되는 경우 해당 아이디에 대한 활성화, 재이용 등은 회사가 정한 별도의 절차에 따릅니다.</p>
									<br>
								    <h4>제9조 회원 정보, 계정관리 및 보안</h4>
								    <p> 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 신속히 회사에 대하여 회원 정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</p>
								    <p><strong> 회원은 아이디 또는 비밀번호 등의 정보를 제3자에게 공유하거나 양도해서는 안 됩니다. 회원은 자신의 정보를 비밀로 유지할 책임이 있으며, 아이디 또는 비밀번호 등의 정보 사용에 대한 책임을 집니다.</strong></p>
								    <p><strong> 회원은 아이디 또는 비밀번호 등의 정보 분실, 유출, 도난 등을 인지하거나 의심이 되는 경우 회사로 즉시 이를 알리고 정보의 부정 사용이 발생하지 아니하도록 조치하여야 합니다.</strong></p>
								    <p><strong> 회원이 아이디 또는 비밀번호 관리를 소홀히 하거나, 아이디 또는 비밀번호를 공유하는 등 회원의 귀책사유로 인하여 발생하는 오용, 도용 등에 대한 손해에 대해서는 회사가 책임을 지지 않습니다. 회사가 회원의 신고를 받고 필요한 조치를 안내했음에도 불구하고 회원이 이를 따르지 않은 경우에도 같습니다.</strong></p>
									<br>
								    <h4>제10조 회원에 대한 통지</h4>
								    <p> 회사는 회원에 대한 통지를 하는 경우 회원이 등록한 전자우편 주소 등으로 통지합니다.</p>
								    <p> 회사는 회원 전체에 대해 통지를 하는 경우 7일 이상 TOONALYST 내에 게시하거나 팝업 화면 등을 제시함으로써 제1항의 통지에 갈음할 수 있습니다.</p>
								
								
									<br>
								    <h3>제3장 당사자의 의무</h3>
									<br>
								    <h4>제11조 회사의 의무</h4>
								    <p> 회사는 관련 법령, 본 약관에서 정하는 권리의 행사 및 의무의 이행을 신의에 따라 성실하게 수행합니다.</p>
								    <p> 회사는 회원이 안전하게 TOONALYST를 이용할 수 있도록 개인정보 보호를 위해 보안시스템을 갖추어야 하며 개인정보 처리방침을 공시하고 준수합니다. 회사는 본 약관 및 개인정보 처리방침에서 정하거나, 법령에 규정이 있거나, 회원의 별도 동의를 획득하는 경우를 제외하고는 회원의 개인정보가 제3자에게 공개 또는 제공되지 않도록 합니다.</p>
								    <p> 회사는 TOONALYST 이용과 관련하여 발생하는 회원의 불만이나 피해구제 요청을 적절하게 처리할 수 있도록 필요한 인력 및 시스템을 갖춥니다.</p>
								    <p> 회사는 TOONALYST 이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정되는 경우에는 이를 처리하여야 합니다. 회원이 제기한 의견이나 불만 사항에 대해서는 게시판, 전자우편, 기타 연락 가능한 수단을 통하여 회원에게 처리 과정 및 결과를 전달합니다.</p>
								    <p> 회사는 계속적이고 안정적인 서비스의 제공을 위하여 노력하며, 서비스 개선 과정에서 장애 등이 발생하는 경우에는 천재지변, 비상사태, 현재 기술로는 해결할 수 없는 장애나 결함 등 부득이한 사유가 없는 한 이를 지체 없이 해결하도록 최선의 노력을 다합니다.</p>
									<br>
								    <h4>제12조 회원의 의무</h4>
								    <p><strong> 회원은 아래 각 호에서 정한 행위를 해서는 안 됩니다.</strong></p>
								    <ol class="law__strong">
								        <li><strong>서비스 제공을 방해하거나, 회사가 정한 방법 이외에 다른 방법으로 서비스를 사용하는 경우</strong></li>
								        <li><strong>다른 회원 또는 비회원의 개인정보를 무단으로 수집 제공하거나, 이를 영리적 목적으로 이용하는 경우</strong></li>
								        <li><strong>음란한 정보 등 공서양속 및 법령에 위반되는 내용의 정보 등을 발송 또는 게시하는 경우</strong></li>
								        <li><strong>역설계, 소스 코드 추출 등의 방법으로 콘텐츠를 복제, 유출, 분해하거나, 변형하는 경우</strong></li>
								        <li><strong>회사가 콘텐츠에 적용한 보호조치를 무력화하는 경우</strong></li>
								        <li><strong>법령, 법원의 판결, 결정 혹은 명령 또는 행정기관에서 발령하는 법적 구속력이 있는 조치에 위반되는 경우</strong></li>
								        <li><strong>공공질서 또는 미풍양속을 저해할 우려가 있는 경우</strong></li>
								        <li><strong>회사 또는 제3자의 저작권, 상표권, 특허권 등의 지식재산권, 명예권, 사생활권, 기타 법령상 또는 계약상의 권리를 침해하는 경우</strong></li>
								        <li><strong>정상적인 서비스 이용과 무관하게 같거나 유사한 메시지를 불특정 다수의 이용자에게 송신하는 경우</strong></li>
								        <li><strong>콘텐츠 또는 코인을 현금, 재물 기타 경제적 이익과 교환하는 경우</strong></li>
								        <li><strong>영업, 선전, 광고, 권유, 기타 영리를 목적으로 하는 정보를 전송하는 경우</strong></li>
								        <li><strong>회사가 정한 이용 등급에 위반하여 콘텐츠를 이용하는 경우</strong></li>
								        <li><strong>타인의 결제수단 및 메일 주소를 허락 없이 도용하여 사용하는 경우</strong></li>
								        <li><strong>본 약관, 운영정책 기타 이용 조건을 위반한 경우</strong></li>
								    </ol>
								    <p><strong> 회원은 회사가 서비스의 이용과 관련하여 공지한 주의 또는 고지사항이나 이용 시 안내되는 사항을 준수하여야 합니다.</strong></p>
								
									<br>
								
								    <h3>제4장 서비스의 이용</h3>
									<br>
								    <h4>제13조 서비스 및 콘텐츠의 구분</h4>
								    <p> TOONALYST는 회원 자격을 보유해야 이용할 수 있는 서비스와 비회원으로도 이용할 수 있는 서비스로 구분되어 있습니다. 회사는 회원만이 이용할 수 있는 서비스에 대해서는 해당 이용자에게 회원 자격의 증명 또는 회원으로의 가입을 요청할 수 있습니다.</p>
								    <p> TOONALYST에 게시된 콘텐츠는 내용에 따라 본인인증(성인인증)이 필요한 콘텐츠와 그렇지 않은 콘텐츠로 구분되며, 회사는 각 콘텐츠를 구분하여 제공합니다. 본인인증(성인인증)이 필요한 콘텐츠의 경우 회원이 본인인증(성인인증)을 완료하지 않는 한 회원 또는 비회원이 이용하는 TOONALYST 상에서 노출되지 않습니다.</p>
								    <p> 회사가 TOONALYST 상에서 제공하는 콘텐츠는 무료로 제공되는 콘텐츠(이하 무료 콘텐츠)와 유료로 제공되는 콘텐츠(이하 유료 콘텐츠)로 구분됩니다. TOONALYST에서 제공되는 유료 콘텐츠는 TOONALYST 내에서 사용되는 전자적 지급수단을 사용하여 이용할 수 있습니다.</p>
									<br>
								    <h4>제14조 서비스의 제공</h4>
								    <p> 회사는 본 약관에 따른 이용계약이 체결된 회원에게 그 즉시 서비스를 이용할 수 있도록 합니다. 다만, 일부 서비스의 경우 회사의 필요에 따라 지정된 일자부터 서비스를 제공할 수 있습니다. 서비스는 1일 24시간, 연중무휴 제공함을 원칙으로 합니다.</p>
								    <p> 회사는 회원에게 서비스를 제공할 때 본 약관에서 정하고 있는 서비스를 포함하여 기타 부가적인 서비스를 제공할 수 있습니다.</p>
								    <p><strong> 회사가 제공하는 서비스를 이용하는 경우 회원이 이용하는 기기, 유/무선 인터넷 요금제에 따라 데이터 이용료(또는 인터넷 회선 이용료)가 발생할 수 있습니다. 이와 관련하여 회사는 회원에게 부과되는 데이터 이용료 등에 대해서 별도의 책임을 지지 않으며, 와이파이(wi-fi) 등 별도의 데이터 사용료가 부과되지 않는 방법으로 회사가 제공하는 서비스를 이용하시는 것을 권장합니다.</strong></p>
								    <p> 회사는 운영상, 기술상의 필요에 따라 제공하고 있는 서비스의 전부 또는 일부를 수정하거나 변경할 수 있으며, 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부의 제공을 중단할 수 있습니다.</p>
								    <ol>
								        <li>콘텐츠의 내용이나 TOONALYST의 서비스 내용의 수정을 위하여 필요한 경우</li>
								        <li>설비의 증설, 보수 등으로 인하여 서비스의 전부 또는 일부의 제공을 중단하여야 하는 경우</li>
								        <li>정전, 설비의 장애, 이용량 폭주로 인하여 정상적으로 서비스를 제공하기 어려운 경우</li>
								        <li>전자적 침해사고, 통신사고, 서비스 불안정성에 대응하기 위하여 필요한 경우</li>
								        <li>전쟁, 천재지변, 소요, 폭동, 기간통신사업자의 회선 장애(회선 장애 외 해당 사업자의 내부 정책 등에 따른 통신 서비스 전체 또는 일부의 제공 중단을 포함합니다) 등 회사의 귀책사유 없는 사유로 인하여 서비스의 전체 또는 일부의 제공이 어려운 경우</li>
								    </ol>
								    <p> 회사는 회원에게 제공하는 서비스를 일시적으로 중단하여야 할 경우 사전에 회원에게 서비스 중단의 사유 및 중단 기간을 공지합니다. 단, 급작스러운 기술 상 사유로 인하여 서비스에 장애가 발생하거나, 기간통신사업자 등의 회선 장애 등으로 인하여 사전에 공지를 할 수 없는 경우에는 가능한 지체 없이 회원에게 해당 내역을 알리도록 노력합니다.</p>
								    <p> 회사는 회원에게 무료로 제공되는 서비스의 전부 또는 일부를 회사의 정책 및 운영 필요에 따라 수정, 중단, 변경할 수 있으며, 이에 대하여 법령에 특별한 규정이 없는 한 회원에게 별도의 보상을 지급하지 않습니다.</p>
								    <p><strong> 회사가 영업양도, 분할, 합병 등에 따른 영업의 폐지, 서비스의 수익 악화 등으로 서비스를 지속하기 어려운 경우에는 TOONALYST의 서비스 전체 또는 일부의 제공을 종국적으로 종료할 수 있습니다. 이 경우, 회사는 서비스의 종료일로부터 30일 이전에 제10조 제1항에 기재된 방법으로 서비스의 종료 사실을 회원에게 개별 통지하며, 아울러 TOONALYST 내에 별도로 공지합니다. 이 경우 회사는 사용하지 않았거나 사용기간이 남아있는 코인에 대해 제28조의 규정에 따라 환불합니다.</strong></p>
								
								    <h4>제15조 서비스의 이용제한</h4>
								    <p> 회원은 제12조에 따른 회원의 의무를 위반하는 행위를 해서는 안 되며, 해당 행위를 하는 경우에 회사는 다음 각 호의 구분에 따른 회원의 서비스 이용제한, 관련 정보(글, 사진, 영상 등) 삭제 및 기타의 조치를 포함한 이용제한 조치를 할 수 있습니다. 회사는 본 항의 내용과 관련하여 별도의 운영정책을 수립하여 운영할 수 있습니다.</p>
								    <ol>
								        <li>계정 이용제한 : 일정기간 또는 영구히 회원의 아이디의 이용을 제한</li>
								        <li>회원 이용제한 : 일정기간 또는 영구히 회원의 서비스 이용을 제한</li>
								    </ol>
								    <p> 제1항의 이용제한이 정당한 경우에 회사는 이용제한으로 인하여 회원이 입은 손해를 배상하지 않으며, 회원은 보유하고 있는 코인에 대하여 제28조에 따라 환불을 받을 수 있습니다.</p>
								    <p> 회사는 다음 각 호의 사유에 대한 조사가 완료될 때까지 회원 아이디의 서비스 이용을 정지할 수 있습니다.</p>
								    <ol>
								        <li>아이디가 해킹 또는 도용당했다는 신고가 접수된 경우</li>
								        <li>위법행위자로 의심되는 경우</li>
								        <li>그 밖에 각 호에 준하는 사유로 서비스 이용의 잠정조치가 필요한 경우</li>
								    </ol>
								    <p> 제3항의 조사가 완료된 후, 서비스 이용 정지와 관련하여 회원의 귀책사유가 없는 것으로 확인되는 경우 정지된 시간만큼 회원의 이용시간을 연장하거나 그에 상당하는 코인 또는 보너스 코인 등으로 보상합니다. 다만, 제3항 각 호의 사유에 해당하는 경우에는 그렇지 않습니다.</p>
								
								    <h4>제16조 콘텐츠의 제공 및 이용</h4>
								    <p> 회사는 콘텐츠 이용 화면에 콘텐츠 이용의 유료 또는 무료 여부에 대하여 회원이 알기 쉽게 표시합니다.</p>
								    <p> TOONALYST에서 제공되는 모든 콘텐츠와 관련하여 회사는 회원에게 회원 본인의 비독점적 이용을 유일한 목표로 하는 권한(이용권)만을 부여합니다. 서비스 내 화면에 "구입", "판매" 등이 표기되어 있는 콘텐츠의 경우에도 콘텐츠 자체에 대한 저작권 및 지식재산권 등 기타 권리는 회원에게 이전되지 않으며, 본 항의 규정에 따라 이용권한만 부여됩니다.</p>
								    <p> 구매한 콘텐츠에 대하여 별도의 이용기한이 표시되어 있지 않은 경우, 콘텐츠는 회사의 서비스가 종료되는 시점까지 이용할 수 있습니다. 단, 회사와 콘텐츠의 권리자 간 체결된 계약이 해지되는 등으로 인하여 회사가 회원에게 콘텐츠를 더 이상 제공할 수 없는 경우에는 그렇지 않습니다.</p>
								    <p> 구매한 콘텐츠는 아이디를 기반으로 하여 소장되며, TOONALYST를 통해 열람할 수 있습니다.</p>
								    <p><strong> 회원이 구매하거나 소장한 콘텐츠를 삭제하는 경우 해당 콘텐츠는 복구되지 않습니다. 또한, 회원 본인이 콘텐츠를 삭제하지 않은 때에도 회원 탈퇴 등으로 인하여 아이디가 삭제되는 경우에는 콘텐츠가 복구되지 않습니다.</strong></p>
								    <p> 콘텐츠와 관련하여 회사와 콘텐츠의 권리자와의 계약이 종료되는 경우 회사는 해당 콘텐츠에 대하여 판매를 중단하며, 이에 대하여 사전에 공지를 진행합니다.</p>
								    <p> 기타 회사가 제공하는 유료 콘텐츠의 청약철회 등과 관련해서는 제25조의 규정에 의합니다.</p>
									<br>
								    <h4>제17조 콘텐츠 이용 조건 등의 변경</h4>
								    <p> 회사는 운영상, 기술상의 필요 등 상당한 이유가 있는 경우에 제공했거나 제공한 콘텐츠의 이용조건 등을 변경할 수 있습니다.</p>
								    <p> 회사는 전 항의 내용에 따라 콘텐츠의 내용, 이용방법, 이용시간 등을 변경할 경우 변경 사유, 변경될 콘텐츠의 내용 및 제공일자 등을 그 변경 전 7일 이상 TOONALYST 내에 게시합니다.</p>
								    <p> 제1항 및 제2항의 규정에도 불구하고, 회사는 콘텐츠의 홍보 또는 판매촉진 등을 위하여 콘텐츠의 이용조건 등을 일시적 또는 장기적으로 변경할 수 있으며, 이 경우 제2항의 규정은 적용되지 않습니다.</p>
									<br>
								    <h4>제18조 정보의 수집, 광고의 제공</h4>
								    <p> 회사는 서비스의 원활하고 안정적인 운영 및 서비스 품질의 개선을 위하여 회원의 이용 기록, 기기 정보 등을 수집하고 활용할 수 있습니다.</p>
								    <p> 회사는 서비스의 개선 및 회원을 대상으로 한 서비스, 콘텐츠의 소개 등을 위한 목적, 기타 회사가 제공하는 서비스와 관련하여 필요한 경우 회원에게 추가적인 정보의 제공을 요청할 수 있습니다. 이 요청에 대하여 회원은 승낙하거나 거절할 수 있으며, 회사가 이 요청을 할 경우에는 회원이 이 요청을 거절할 수 있다는 내용과, 요청을 거절할 경우 발생할 수 있는 불이익이 있는 경우 그 내용을 함께 고지합니다.</p>
								    <p> 회사는 서비스와 관련하여 TOONALYST 내에 광고를 게재할 수 있으며, 수신에 동의한 회원에 한하여 푸시 메시지, 전자우편, 문자서비스 등의 방법으로 별도로 광고성 정보를 전송할 수 있습니다. 이 경우 회원은 언제든지 광고성 정보의 수신을 거절할 수 있으며, 회사는 회원의 수신거절 시 광고성 정보를 발송하지 않습니다.</p>
								    <p><strong> TOONALYST 내의 배너 또는 링크 등을 통해 타인이 제공하는 광고나 서비스에 연결될 수 있으며, 타인이 제공하는 광고나 서비스에 연결될 경우 해당 영역에서 제공하는 서비스는 회사의 서비스 영역이 아니므로 회사는 해당 광고나 서비스의 신뢰성, 안정성 등을 보장하지 않으며, 그로 인한 회원의 손해에 대해서도 회사는 책임을 지지 않습니다. 다만, 회사가 고의 또는 중과실로 손해의 발생을 용이하게 했거나 손해의 발생이 예견됨에도 불구하고 손해의 방지를 위한 조치를 취하지 않은 때에는 그렇지 않습니다.</strong></p>
									<br>
								    <h4>제19조 저작권 등 권리의 귀속</h4>
								    <p> 회사가 제작한 콘텐츠 또는 서비스에 대한 저작권, 기타 지식재산권은 회사에 귀속합니다.</p>
								    <p> TOONALYST를 통하여 서비스되는 콘텐츠 중 회사가 제작하지 않은 콘텐츠에 대한 저작권, 기타 지식재산권은 해당 콘텐츠의 권리자에게 귀속합니다.</p>
								    <p> TOONALYST 내에 게시되는 이용자 콘텐츠에 대한 저작권, 기타 지식재산권은 해당 이용자 콘텐츠의 권리자에게 귀속합니다.</p>
								    <p> 회원은 회사 또는 콘텐츠의 권리자에게 권리가 귀속하는 콘텐츠를 회사 또는 각 권리자의 사전 동의 없이 복제, 전송 등의 방법(편집, 공표, 공연, 배포, 방송, 2차적 저작물 작성을 포함하며, 이하 같습니다)에 의하여 이용하거나 타인에게 이용하게 해서는 안됩니다.</p>
								    <p> TOONALYST 내에 게시되는 이용자 콘텐츠에 대하여 회사는 해당 이용자 콘텐츠를 작성한 회원의 명시적인 동의 없이 영리 목적으로 이용하지 않으며, 회원은 언제든지 이러한 이용자 콘텐츠를 삭제할 수 있습니다.</p>
								    <p> 회원이 이용자 콘텐츠를 TOONALYST 내에 등록, 게시하는 경우, 회원은 다음 각 호의 내용으로 회사가 해당 이용자 콘텐츠를 이용하는 것에 동의합니다.</p>
								    <ol>
								        <li>회사는 이용자 콘텐츠를 TOONALYST를 이용하는 다른 회원에게 복제, 전송 등의 방법으로 무상으로 제공할 수 있습니다. 단, 영리 목적의 제공은 사전 동의를 얻지 아니하고서는 허용되지 않습니다.</li>
								        <li>회사는 회원 본인이 등록한 이용자 콘텐츠를 삭제하거나, 회사에 권리관계를 소명하여 해당 이용자 콘텐츠의 삭제를 요청하지 않는 한 이용자 콘텐츠를 별도의 기간 제한 없이 TOONALYST 내에서 노출하고 복제, 전송 등의 방법으로 제공할 수 있습니다.</li>
								    </ol>
								    <p> 회사는 회원이 게시하거나 등록한 이용자 콘텐츠에 대하여 제12조 규정에 따른 금지행위에 해당한다고 판단되거나, 별도로 마련한 운영정책에 위반된다고 판단되거나, 법령의 규정에 따라 유통이 금지되는 이용자 콘텐츠라고 판단되는 경우에는 이를 사전 통지 없이 삭제, 이동, 비열람 처리 등의 조치를 할 수 있습니다.</p>
								    <p> 회원이 게시한 이용자 콘텐츠에 대하여 관련 법령에 저촉되는 내용이 포함된 경우, 권리자는 법령에 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련 법령의 내용에 따라 조치를 취합니다.</p>
								    <p> 회사는 권리자의 요청이 없는 경우라도 권리 침해가 인정될 만한 소지가 있는 경우 임시 조치를 취할 수 있습니다.</p>
								    <p> 제8항 내지 제9항에 따른 세부 절차는 관련 법령에서 규정한 바에 따릅니다.</p>
								    <p> 회사는 이용자 콘텐츠에 대한 권리 침해 등에 대하여 별도의 단속권한을 보유하지 않으며, 이용자 콘텐츠에 대하여 저작권 침해 등에 대한 단속 조치를 취할 의무를 부담하지 않습니다. 이용자 콘텐츠와 관련하여 권리 침해 등이 발생하는 경우에는 회원 본인이 권리 침해에 대한 구제 조치를 해야 합니다. 단, TOONALYST에 게시된 이용자 콘텐츠에 대하여 이용자 콘텐츠를 업로드한 회원이 아닌 제3자가 권리 침해 등을 회사로 신고하는 경우에는 [정보통신망 이용촉진 및 정보보호 등에 관한 법률] 등 법령의 규정에 의합니다.</p>
								    <p>본 조의 규정은 회사가 TOONALYST를 운영하는 동안 유효하며, 회원 탈퇴 후에도 지속적으로 적용됩니다.</p>
									<br>
								    <h4>제20조 서비스 이용의 기술적 요구사항</h4>
								    <p>TOONALYST에서 제공되는 서비스의 이용 시 필요한 기술적 사항은 TOONALYST 웹사이트 및 TOONALYST 애플리케이션 다운로드 페이지에서 확인할 수 있습니다.</p>
									<br>
								
								
								    <h3>제5장 이용계약의 해지</h3>
								    <br>
								    <h4>제21조 계약해지</h4>
								    <p> 회원은 언제든지 내 정보 > 계정 탈퇴 항목을 이용하여 본 약관에 따른 이용계약을 해지할 수 있습니다. 이 경우 관련 법령의 내용 및 회사의 개인정보 처리방침에 따라 회사가 회원의 개인정보를 보유하여야 하는 경우를 제외하고 회원의 개인정보는 해지 이후 삭제됩니다.</p>
								    <p> 회원이 계약을 해지할 경우 회원이 업로드한 이용자 콘텐츠는 삭제되지 않을 수 있습니다. 가급적 이용자 콘텐츠를 삭제하신 후 이용계약을 해지하시기 바랍니다.</p>
								    <p> 회원은 다음 각 호의 경우 본 약관에 따른 이용계약을 해지할 수 있습니다.</p>
								    <ol>
								        <li>회원이 회사의 귀책사유로 인하여 회사가 제공하는 서비스 전체를 이용할 수 없는 경우. 단, 일시적인 서비스 이용의 중단 등은 포함하지 않습니다.</li>
								        <li>본 약관의 개정 내용에 대하여 동의하지 않는 경우</li>
								        <li>기타 소비자 보호를 위하여 회사가 별도로 정하는 경우</li>
								    </ol>
								    <p> 회사는 회원이 본 약관 제12조를 위반한 경우 이용계약을 해지할 수 있습니다. 이 경우, 회사는 회원이 등록한 전자우편 또는 회원이 등록한 연락처, 기타 연락 가능한 방법으로 해당 내역을 회원에게 통보합니다.</p>
								
									<br>
								    <h3>제6장 손해배상 및 면책</h3>
								    <br>
								    <h4>제22조 손해배상</h4>
								    <p> 회사 또는 회원은 본 약관을 위반하여 상대방에게 손해를 입힌 경우 그 손해를 배상할 책임이 있습니다. 다만, 고의 또는 과실이 없는 경우에는 그렇지 않습니다.</p>
								    <p> 회사가 TOONALYST 내에서 제공되는 개별 서비스의 제공자와 제휴 계약을 맺고 회원에게 개별 서비스를 제공하는 경우에 회원이 개별 서비스의 제공자와 계약을 체결한 뒤 개별 서비스 제공자의 고의 또는 과실로 인하여 회원에게 손해가 발생하는 경우 그 손해에 대해서는 개별 서비스를 제공하는 제공자가 책임을 집니다.</p>
									<br>
								    <h4>제23조 면책</h4>
								    <p><strong> 회사는 천재지변, 전쟁, 폭동, 소요, 기간통신사업자의 회선 이상, 기타 회사가 통제 불가능한 불가항력적 사유로 인하여 서비스를 제공할 수 없는 경우에는 이에 관하여 책임을 지지 않습니다.</strong></p>
								    <p><strong> 회사는 서비스용 설비의 보수, 교체, 점검, 공사 기타 이에 준하는 사유로 발생한 손해에 대하여 책임을 지지 않습니다. 다만, 회사의 고의 또는 과실에 의한 경우에는 그렇지 않습니다.</strong></p>
								    <p><strong> 회사는 회원의 고의 또는 과실로 인한 서비스 이용 장애에 대해서는 책임을 지지 않습니다. 다만, 회원에게 부득이하거나 정당한 사유가 있는 경우에는 그렇지 않습니다.</strong></p>
								    <p><strong> 회원이 TOONALYST 내에 게재한 정보나 자료 등의 신뢰성, 정확성 등에 대하여 회사는 고의 또는 중과실이 없는 한 책임을 지지 않습니다.</strong></p>
								    <p><strong> 회사는 회원이 다른 회원 또는 타인과 서비스를 매개로 하여 발생한 거래나 분쟁에 대하여 개입할 의무가 없으며, 이로 인한 손해에 대하여 책임을 지지 않습니다.</strong></p>
								    <p><strong> 회사는 무료로 제공되는 서비스의 이용과 관련하여 회원에게 발생한 손해에 대해서는 책임을 지지 않습니다. 그러나 회사의 고의 또는 중과실에 의한 경우에는 그렇지 않습니다.</strong></p>
								    <p><strong> 회사는 회원이 아이디, 비밀번호 등을 관리하지 않아 발생하는 제3자 결제, 도용, 해킹 등에 대해 책임을 부담하지 않습니다. 다만, 회사의 고의 또는 과실에 의한 경우는 그렇지 않습니다.</strong></p>
								    <p><strong> 회사는 회원의 이용기기 변경, 기기 오류, 해외 로밍 등으로 인하여 ‘서비스의 전부 또는 일부의 기능을 이용할 수 없는 경우 이에 대하여 책임을 지지 않습니다. 다만, 회사의 고의 또는 과실에 의한 경우에는 그렇지 않습니다.</strong></p>
								    <p><strong> 회사는 서비스를 통하여 제공되는 개별 웹툰 작품의 완결에 대하여 보증하지 않으며, 서비스를 통하여 제공되는 개별 웹툰 작품의 연재가 중단되는 경우에도 그에 대하여 책임을 지지 않습니다.</strong></p>
								    <p><strong> 회사는 비회원이 서비스 이용으로 발생한 손해에 대해서는 책임을 지지 않습니다. 다만, 회사의 고의 또는 과실에 의한 경우는 그렇지 않습니다.</strong></p>
									<br>
								
								
								    <h3>제7장 기타</h3>
									<br>
								    <h4>제24조 회원의 고충처리, 분쟁해결</h4>
								    <p> 회사는 회원의 편의를 고려하여 회원의 의견이나 불만을 제시하는 방법을 TOONALYST 내에 게시합니다. 회사는 이러한 회원의 의견이나 불만을 처리하기 위하여 고객센터를 운영합니다.</p>
								    <p> 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정되는 경우 합리적인 기간 내에 이를 신속하게 처리하기 위하여 노력합니다. 다만, 처리에 장기간이 소요되는 경우에는 회원에게 그 사유와 일정을 개별적으로 통지합니다.</p>
								    <p> 회사와 회원간에 분쟁이 발생하는 경우, 회원은 제3의 분쟁조정기관에 조정을 신청할 수 있으며, 회사는 분쟁조정기관의 조정에 따를 수 있습니다.</p>
								    <p> 회원이 회사로부터 이용제한 또는 계약해지 등을 당하여 이에 불복하고자 하는 경우 회원은 이 조치가 있은 날로부터 14일 이내에 불복 이유를 기재한 이의신청을 회사에 제출하여야 합니다.</p>
								    <p> 회사는 회원의 이의신청을 받은 날로부터 14일 이내에 불복 이유에 대하여 회원에게 답변하며, 이 기간 내에 답변이 어려운 경우 그 사유와 처리 일정을 통지합니다.</p>
								    <p> 회사는 회원의 이의신청이 타당한 경우 그와 관련하여 필요한 조치를 취합니다.</p>
									<br>
								    <h4>제25조 준거법 및 관할법원</h4>
								    <p> 본 약관은 대한민국 법률에 의하여 해석되고 규율됩니다.</p>
								    <p> 회사와 회원 간에 발생한 분쟁으로 소송이 제기되는 경우, 제소 당시 회원의 주소지 관할법원(주소가 없는 경우에는 거소를 관할하는 법원)을 제1심 관할법원으로 합니다. 만약 주소 또는 거소가 명확하지 않은 때에는 민사소송법에 따라 관할 법원을 정합니다.</p>
								    <p> 국내에 주소 또는 거소가 없는 회원의 경우 전 항의 규정에도 불구하고 대한민국 서울중앙지방법원을 관할법원으로 합니다.</p>
								
								    <br>
								    <p>※ 시행일자</p>
								    <p>이 약관은 2018년 9월 18일부터 시행됩니다.</p>
								</div>
							</div>
							<div class="box_name box_con_style constract_input_box">
								<span class="chk"><i class="fas fa-check"></i></span>
								<input type="text" class="form_input constract_box" value="개인정보 수집·이용 동의 (필수)" readonly="readonly">
								<span class="down_btn"><i class="fas fa-chevron-down"></i></span>
							</div>
							<div class="constract_content">
								<table class="tbl_row">
									<caption class="hidden">개인정보 수집·이용 동의</caption>
									<tbody>
										<tr>
											<th>수집하는 개인정보 항목</th>
											<td class="tal">이름, 로그인ID, 비밀번호, 자택 전화번호, 자택 주소, 전화번호, 이메일</td>
										</tr>
										<tr>
											<th>수집 및 이용목적</th>
											<td class="tal">
												회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 불만처리 등 민원처리, 고지사항 전달
											</td>
										</tr>
										<tr>
											<th>보유 및 이용기간</th>
											<td>
												회원탈퇴 단, 관계 법령에 따라 개인정보를 보존해야 하는 경우, 회사는 해당 법령에서 정한 기간동안 보관합니다.<br>
												※ 동의를 거부할 수 있으나 거부 시 회원가입이 불가능합니다.
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							 <div class="box_con_style">
							 	<span class="join_err_msg">필수 동의 사항입니다.</span>
							 </div>
						</div>
						<!-- 가입하기 버튼 -->
						<div class="join_btn">
							<button class="btn_agree">가입하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/validation.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function sample6_execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수
	
				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}
	
				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById("sample6_detailAddress").value = '';
				} else {
					document.getElementById("sample6_detailAddress").value = '';
				}
	
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('sample6_postcode').value = data.zonecode;
				document.getElementById("sample6_address").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("sample6_detailAddress").focus();
			}
		}).open();
	}
</script>
<script type="text/javascript">
$(document).ready(function(){
	
	// 가입하기 버튼 활성화 비활성화
	var flag_btn = 0;
	
	$('').change(function(){
		if (flag_btn == 1) {
			$('.btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
			flag_btn = 0;
		} else {
			$('.btn_agree').css('background', '#d5d5d5').css('border', '1px solid #d5d5d5');
			flag_btn = 1;
		}
	});
	
	// 우편번호, 주소 클릭시 다음주소 API 창 출력
	$('.addr_btn').click(function() {
		var zipcode = $('.addr_btn').eq(0).val();
		var addr = $('.addr_btn').eq(1).val();
		if (zipcode = "" || addr == "") {
			$('#addr_btn').click();
		}
	});
	
	// 약관동의 내용창 띄우는 코드
	$('#join_id').focus();
	var flag = 0;
	$('.down_btn').eq(0).click(function(){
		if(flag == 0) {
			$('.constract_content').eq(0).css('height', '250px').css('border', '1px solid #d5d5d5').css('overflow','auto');
			flag = 1;
		} else {
			$('.constract_content').eq(0).css('height', '0px').css('border', '0px solid #d5d5d5').css('overflow','hidden');
			flag = 0;
		}
	});
	var code = 0;
	$('.down_btn').eq(1).click(function(){
		if(code == 0) {
			$('.constract_content').eq(1).css('height', '250px').css('border', '1px solid #d5d5d5').css('overflow','auto');
			code = 1;
		} else {
			$('.constract_content').eq(1).css('height', '0px').css('border', '0px solid #d5d5d5').css('overflow','hidden');
			code = 0;
		}
	});
	
	// ID 유효성체크
	$("#join_id").keyup(function() {
		var memId = $.trim($("#join_id").val());
		// validation에서 checkId() 함수를 실행 후 결과값(code, desc)을 변수 checkResult에 담음
		var checkResult = joinValidate.checkId(memId);
		
		if(checkResult.code != 0) { // 실패, 경고메세지 출력
			$('.join_err_msg').eq(0).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(0).css('color', '#d5d5d5');
			return false;
		} else { // 성공했기 때문에 중복인지 Ajax로 검증
			/* if(ajaxCheck(memId) == "1"){
				return true; // 사용가능한 ID
			} */
			$('.chk').eq(0).css('color', '#ff6c36');
			$('.join_err_msg').eq(0).css('display', 'none');
			flag_btn = 1;
			return true;
		}
		return false;
	});
	
	// PW 유효성체크
	$('#join_pw').keyup(function(){
		var memPw = $.trim($('#join_pw').val());
		var memRpw = $.trim($('#join_rpw').val());
		// validation에가서 joinValidate의 checkPw다녀옴
		var checkResult = joinValidate.checkPw(memPw, memRpw);
		
		if(checkResult.code != 0) { // 실패
			$('.join_err_msg').eq(1).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(1).css('color', '#d5d5d5');
			return false;
		} else { // 성공
			$('.chk').eq(1).css('color', '#ff6c36');
			$('.join_err_msg').eq(1).css('display', 'none');
		}
	});
	
	// RPW 유효성체크
	$('#join_rpw').keyup(function(){
		var memPw = $.trim($('#join_pw').val());
		var memRpw = $.trim($('#join_rpw').val());
		// validation에가서 joinValidate의 checkPw다녀옴
		var checkResult = joinValidate.checkRpw(memPw, memRpw);
		
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(2).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(2).css('color', '#d5d5d5');
			return false;
		} else { // 성공
			$('.chk').eq(2).css('color', '#ff6c36');
			$('.join_err_msg').eq(2).css('display', 'none');
		}
	});
	
	// NAME 유효성 체크
	$('#join_name').keyup(function(){
		var name = $.trim($('#join_name').val());
		var checkResult = joinValidate.checkName(name);
		
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(3).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(3).css('color', '#d5d5d5');
			return false;
		} else { // 성공
			$('.chk').eq(3).css('color', '#ff6c36');
			$('.join_err_msg').eq(3).css('display', 'none');
		}
	});
	
	// EMAIL 유효성 체크
	$("#join_email").keyup(function() {
		var email = $.trim($('#join_email').val());
		var checkResult = joinValidate.checkEmail(email);
	
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(4).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(4).css('color', '#d5d5d5');
			return false;
		} else { // 성공
			$('.chk').eq(4).css('color', '#ff6c36');
			$('.join_err_msg').eq(4).css('display', 'none');
		}
	});
	
	// 전화번호 유효성 체크
	$("#join_phone").keyup(function() {
		var phone = $.trim($('#join_phone').val());
		var checkResult = joinValidate.checkPhone(phone);
	
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(5).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(5).css('color', '#d5d5d5');
			return false;
		} else { // 성공
			$('.chk').eq(5).css('color', '#ff6c36');
			$('.join_err_msg').eq(5).css('display', 'none');
		}
	});
	
	// 주소 유효성 체크
	$(".join_addr2").keyup(function() {
		var zipcode = $.trim($('.join_zipcode').val());
		var addr1 = $.trim($('.join_addr1').val());
		var addr2 = $.trim($('.join_addr2').val());
	
		if(zipcode != "" && addr1 != "" && addr2 != ""){
			$('.chk').eq(6).css('color', '#ff6c36');
			$('.join_err_msg').eq(6).css('display', 'none');
		}
	});
	
	// 약관동의에서 전체동의를 클릭했을 때 	
	$('#agree_check').change(function() {
		/*checked는 prop를 사용하자*/
		var flag = $('#agree_check').is(':checked'); /*is로 값을 넣을 수 없고 확인만 해주고 */
		if (flag) {
			$('#check_btn').addClass('check_on');
			$('#check_btn').removeClass('check_off');
			$('.chk').eq(7).css('color', '#ff6c36');
			$('.chk').eq(8).css('color', '#ff6c36');
		} else {
			$('#check_btn').addClass('check_off');
			$('#check_btn').removeClass('check_on');
			$('.chk').eq(7).css('color', '#d5d5d5');
			$('.chk').eq(8).css('color', '#d5d5d5');
			return false;
		}
	});
	// 가입하기 눌렀을 때 
	$('.btn_agree').click(function() {
		var must = $('#agree_check').is(':checked');
		if (must == true) {
			location.href = "${path}/member/create";
		} else {
			$(".join_err_msg").eq(7).css("display", "inline-block");
			return false;
		}
	});
});


</script>
</body>
</html>