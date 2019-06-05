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
	width: 100%;
}
.section_inline {
	width: 1180px;
	margin: 0 auto;
}
.join_input {
	width: 440px;
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
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	text-align: center;
	color: tomato;
	letter-spacing: -1;
	font-size: 15px;
}
/* 약관동의 부분 */
.constract_line {
	width: 440px;
}
.title {
	margin-bottom: 20px;
	font-size: 18px;
	font-weight: 500;
	color: #191919;
	display: inline-block;
}
#agree_check {
	display: none;
}

.agree_check {
	margin-top: 17px;
	float: right;
}
.check_btn {
	display: inline-block;
    width: 26px;
    height: 26px;
    margin-top: 1px;
    border-radius: 100%;
    background: url(${path}/resources/img/check_off.gif) no-repeat;
    background-size: 100%;
    vertical-align: top;
}
.constract_input_box {
	margin: 0;
}
.btn_agree {
	width: 440px;
	height: 58px;
	border: 1px solid #ff6c36;
	background: #ff6c36;
	color: white;
	font-size: 18px;
	margin-top: 20px;
	letter-spacing: -1;
	font-weight: 600;
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
	height: 250px;
	border: none;
	box-sizing: border-box;
	background: #fff;
	padding: 4px 20px;
	display: none;
	overflow: auto;
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
									<input type="text" name="zipcode" id="sample6_postcode" class="addr_btn form_input" readonly="readonly" placeholder="우편번호"> 
									<input type="button" id="addr_btn" onclick="sample6_execDaumPostcode()" class="btn_normal" value="우편번호 찾기"><br>
									<input type="text" name="addr1" id="sample6_address" placeholder="주소" class="addr_btn addr_style" readonly="readonly"><br> 
									<input type="text" name="addr2" id="sample6_detailAddress" class="addr_btn addr_style" placeholder="상세항목">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
							</div>
						</div>
						<!-- 약관동의 부분 -->
						<div class="constract_line">
							<p class="title">약관동의</p>
							<div class="agree_check">
								<label for="agree_check"><b>전체 동의 </b><span class="check_btn"></span></label>
								<input type="checkbox" id="agree_check">
							</div>
							<div class="box_name box_con_style constract_input_box">
								<span class="chk"><i class="fas fa-check"></i></span>
								<input type="text" id="join_name" name="join_name" class="form_input" value="이용약관 동의 (필수)" readonly="readonly">
								<span class="down_btn"><i class="fas fa-chevron-down"></i></span>
							</div>
							<div class="constract_content"></div>
							<div class="box_name box_con_style constract_input_box">
								<span class="chk"><i class="fas fa-check"></i></span>
								<input type="text" id="join_name" name="join_name" class="form_input" value="개인정보 수집·이용 동의 (필수)" readonly="readonly">
								<span class="down_btn"><i class="fas fa-chevron-down"></i></span>
							</div>
							<div class="constract_content"></div>
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
<script type="text/javascript">
$(document).ready(function(){
	$('#join_id').focus();
	var flag = 0;
	
	$('.down_btn').eq(0).click(function(){
		if(flag == 0) {
			$('.constract_content').eq(0).css('display', 'block').css('border', '1px solid #d5d5d5');
			flag = 1;
		} else {
			$('.constract_content').eq(0).css('display', 'none').css('border', 'none');
			flag = 0;
		}
	});
	
	var code = 0;
	
	$('.down_btn').eq(1).click(function(){
		if(code == 0) {
			$('.constract_content').eq(1).css('display', 'block').css('border', '1px solid #d5d5d5');
			code = 1;
		} else {
			$('.constract_content').eq(1).css('display', 'none').css('border', 'none');
			code = 0;
		}
	});
	
});
</script>
</body>
</html>