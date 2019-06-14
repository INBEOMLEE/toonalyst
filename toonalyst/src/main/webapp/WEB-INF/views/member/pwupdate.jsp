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
    text-align: center;
    color: tomato;
    letter-spacing: -1;
    font-size: 15px;
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
.join_btn_agree {
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
hr {
	margin-bottom: 10px;
}
.pwupdate_err_box {
	width: 440px;
	text-align: center;
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
					<form action="${path}/member/pwupdate" method="POST" name="pwupdate_form" id="pwupdate_form">
						<!-- 입력부분 -->
						<div class="join_content">
							<span class="con_title">기본정보입력(필수)</span>
							<div class="box">
								<div class="box_pw box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="password" id="join_oldpw" class="form_input" placeholder="현재 비밀번호">
								</div>
								<div class="pwupdate_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<br>
								<hr>
								<br>
								<div class="box_pw box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="password" id="join_pw" name="pw" class="form_input" placeholder="새 비밀번호">
								</div>
								<div class="pwupdate_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_rpw box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="password" id="join_rpw" name="rpw"class="form_input" placeholder="새 비밀번호 재확인">
									
								</div>
								<div class="pwupdate_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
							</div>
						</div>
						<!-- "수정하기" 버튼 -->
						<div class="join_btn">
							<input type="button" class="join_btn_agree" value="수정하기">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<script type="text/javascript" src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">

	// 가입하기 버튼 활성화 비활성화
	var oldpw_check = false;
	var pw_check = false;
	var all_check = false;
	
	$(document).ready(function(){
		// 현재 비밀번호 유효성 체크
		$('#join_oldpw').keyup(function(){
			var oldPw = $.trim($('#join_oldpw').val());
			oldpw_check = ajaxPwCheck(oldPw);
			
			check_btn();
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
				pw_check = false;
			} else { // 성공
				$('.chk').eq(1).css('color', '#ff6c36');
				$('.join_err_msg').eq(1).css('display', 'none');
				if(memPw == memRpw) {
					$('.chk').eq(2).css('color', '#ff6c36');
					$('.join_err_msg').eq(2).css('display', 'none');
					pw_check = true;
				} else {
					pw_check = false;
				}
			}
			check_btn();
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
				pw_check = false;
			} else { // 성공
				$('.chk').eq(2).css('color', '#ff6c36');
				$('.join_err_msg').eq(2).css('display', 'none');
				if(memPw == memRpw) {
					$('.chk').eq(1).css('color', '#ff6c36');
					$('.join_err_msg').eq(1).css('display', 'none');
					pw_check = true;
				} else {
					pw_check = false;
				}
			}
			check_btn();
		});
		
		
		// 가입하기 눌렀을 때
		$('.join_btn_agree').click(function() {
			var oldPw = $.trim($('#join_oldpw').val());
			var memPw = $.trim($('#join_pw').val());
			
			if(all_check == true) { // 유효성체크 모두 통과, 서브밋
				if(oldPw != memPw) {
					$(".join_err_msg").eq(2).css("display", "none");
					$("#pwupdate_form").submit();
				} else {
					$(".join_err_msg").eq(2).text("현재 비밀번호와 새 비밀번호가 같습니다.").css("display", "inline-block");
				}
			} else { // 유효성체크 통과하지 못한 경우
				$(".join_err_msg").eq(2).text("필수사항을 다시 확인해주세요.").css("display", "inline-block");
			}
		});
	});
	
	// 수정하기 버튼의 색 변화
	function check_btn() {
		if
		(   oldpw_check == true
			&& pw_check == true 
		) {
			$('.join_btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
			all_check = true;
		} else {
			$('.join_btn_agree').css('background', '#d5d5d5').css('border', '1px solid #d5d5d5');
			all_check = false;
		}
	}
</script>
</body>
</html>