<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	border: 1px solid blue;
	width: 100%;
}
.section_inline {
	width: 1180px;
	margin: 0 auto;
	border: 1px solid red;
}
.join_input {
	width: 500px;
	margin: 0 auto;
	padding: 80px 0 30px;
}
/* 상단 타이틀 */
.join_title {
	text-align: center;
	margin-bottom: 25px;
	border-bottom: 1px solid #d5d5d5;
}
/* 입력 부분 */
.con_title {
	font-weight: 800;
	font-size: 18px;
	color: #191919;
	margin-bottom: 10px;
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
}
.box_con_style {
	margin-bottom: 10px;
	position: relative;
	padding-left: 60px; 
}
.chk {
	position: absolute;
	top: 0;
	left: 0;
	width: 60px;
	height: 58px;
	display: inline-block;
	border: 1px solid #d5d5d5; 
	box-sizing: border-box;
	background: #fff;
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
					<!-- 입력부분 -->
					<div class="join_content">
						<form action="${path}/member/create" method="POST" name="frm_mem" id="frm_mem">
							<span class="con_title">기본정보입력(필수)</span>
							<div class="box">
								<div class="box_id box_con_style">
									<span class="chk"></span>
									<input type="text" id="join_id" maxlength="16" name="join_id" class="form_input" placeholder="아이디">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_pw box_con_style">
									<span class="chk"></span>
									<input type="password" id="join_pw" name="join_pw" class="form_input" placeholder="비밀번호">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_rpw box_con_style">
									<span class="chk"></span>
									<input type="password" id="join_rpw" name="join_rpw" class="form_input" placeholder="비밀번호 재확인">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_name box_con_style">
									<span class="chk"></span>
									<input type="text" id="join_name" name="join_name" class="form_input" placeholder="비밀번호 재확인">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_email box_con_style">
									<span class="chk"></span>
									<input type="text" id="join_email" name="join_email" class="form_input" placeholder="이메일">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_phone box_con_style">
									<span class="chk"></span>
									<input type="text" id="join_phone" name="join_phone" class="form_input" placeholder="휴대전화번호">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_addr box_con_style">
									<input type="text" name="zipcode" id="sample6_postcode" class="addr_btn" readonly="readonly" placeholder="우편번호"> 
									<input type="button" id="addr_btn" onclick="sample6_execDaumPostcode()" class="btn_normal" value="우편번호 찾기"><br>
									<input type="text" name="addr1" id="sample6_address" placeholder="주소" class="addr_btn addr_style" readonly="readonly"><br> 
									<input type="text" name="addr2" id="sample6_detailAddress" class="addr_btn addr_style" placeholder="상세항목">
									<span class="err_msg">필수 입력 사항입니다.</span>
								</div>
							</div>
						</form>
					</div>
					<!-- 약관동의 부분 -->
					<div class="agree_wrap">
						<p class="title">약관동의</p>
						<div class="inner">
							<p class="all">
								<input type="checkbox" id="all" onclick="allCheck(this.checked)">
								"전체 동의"
								<span class="ml6"></span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>