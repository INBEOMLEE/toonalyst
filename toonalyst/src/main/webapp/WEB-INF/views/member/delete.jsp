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
	width: 100%;
}
.section_inline {
	width: 1180px;
	margin: 0 auto;
}
.join_input {
	width: 650px;
	margin: 0 auto;
	padding: 30px 0 30px;
}
/* 상단 타이틀 */
.join_title {
	height: 70px;
	line-height: 70px;
	text-align: center;
	margin-bottom: 25px;
}
#delete_form {
	margin-top: 16px;
	margin-bottom: 32px;
	padding: 20px;
	padding-bottom: 30px;
	background: #fbfbfb;
	border-top: 1px solid #d5d5d5;
	border-bottom: 1px solid #d5d5d5;
}
.delete_content {
	margin: 32px 0;
	position: relative;
	font-style: normal;
}
.delete_radio {
	margin-bottom: 12px;
	letter-spacing: -1;
	line-height: 20px;
	font-style: normal;
	padding-left: 3px;
}
#delete_cause {
	width: 100%;
	padding: 20px;
}
.radio_style {
	margin: 7px 0;
}
.box {
	width: 100%;
	height: 40px;
	position: relative;
	box-sizing: border-box;
}
.box_con_style {
	position: relative;
}
.form_input {
	height: 40px;
	border-width: 0 0 0 1px;
	border:1px solid #d5d5d5;
	font-size: 16px;
	width: 100%;
	background: #fff;
	outline: none;
}
.join_err_msg {
	display: none;
	padding: 7px;
	margin-bottom: 10px;
	color: tomato;
	letter-spacing: -1;
	font-size: 15px;
	color: #FF3636;
}
.p_bottom_style {
	line-height: 1.5;
	margin-bottom: 16px;
}

.delete_btn_agree {
	position: absolute;
	top: 0;
	right: 0;
	width: 80px;;
	height: 40px;
	border: 1px solid #d5d5d5;
	background: #d5d5d5;
	color: white;
	font-size: 18px;
	letter-spacing: -1;
	font-weight: 600;
	cursor: pointer;
	outline: none;
}
/* 모달창 */
#delete_modal {
	position: fixed;
	z-index: 10;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
	display: flex; /* 여기위치가 container이다 */
	align-items: center;
	justify-content: center;
	display: none;
}
#delete_content {
	margin: 10px 0px;
	/* width가 있으면 양쪽에 여백을 반토막내서 가운데 정렬해주는것이 margin: 0 auto이다; */
	height: 400px;
	text-align: center;
}
#close_btn {
	position: absolute;
	top: -26px;
	right: -26px;
	width: 20px;
	height: 25px;
	border-radius: 3px;
	background-color: #333;
	cursor: pointer;
	transition: .2s linear;
	z-index: 9;
	color: white;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
}
.wrap_btn {
	display: flex;
	justify-content: space-evenly;
}
</style>
</head>
<body>
	<!-- 탈퇴하기 모달창 -->
	<div id="delete_modal">
		<div id="delete_content">
			<div id="login_content">
				<div id="login_area">
					<div id="subtitle">Login</div>
					<div id="close_btn">
						<i class="fas fa-times" id="x_icon"></i>
					</div>
					<div id="container">
						<form name="" action="" method="POST" id="login_form">
							<input type="text" class="idpw" id="login_id" name="" placeholder="아이디"></input> 
							<input type="password" class="idpw" id="login_pw" name="" placeholder="비밀번호"></input> 
							<span class="err_msg">필수정보입니다.</span>
						</form>
						<div class="wrap_btn">
							<a href="#" id="delete_no_btn"> 
								<span>취소</span> 
							</a> 
							<a id="delete_yes_btn"> 
								<span>탈퇴하기</span> 
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section>
		<div class="section_outline">
			<div class="section_inline">
				<div class="join_input">
					<!-- 타이틀 -->
					<div class="join_title">
					 	<h2>계정 탈퇴</h2>
					</div>
					<form action="${path}/member/pwupdate" method="POST" name="delete_form" id="delete_form">
						<!-- 입력부분 -->
						<p>회원님의 탈퇴 사유를 알려주세요. 더 좋은 TOONALYST가 되기 위해 노력하겠습니다.</p>
						<div class="delete_content">
						
							<input type="radio" id="reason_uncomfortable" class="radio_style" name="delete_reason" value="errors">
							<label for="reason_uncomfortable" class="delete_radio">이용이 불편하고 장애가 많음</label>
							<br>
							<input type="radio" id="reason_competitor" class="radio_style" name="delete_reason" value="errors">
							<label for="reason_competitor" class="delete_radio">다른 사이트가 더 좋아서</label>
							<br>
							<input type="radio" id="reason_frequency" class="radio_style" name="delete_reason" value="errors">
							<label for="reason_frequency" class="delete_radio">사용빈도가 낮아서</label>
							<br>
							<input type="radio" id="reason_content" class="radio_style" name="delete_reason" value="errors">
							<label for="reason_content"class="delete_radio">콘텐츠 불만</label>
							<br>
							<input type="radio" id="reason_etc" class="radio_style" name="delete_reason" value="errors">
							<label for="reason_etc" id="reason_etc" class="delete_radio">기타</label>
							<textarea name="delete_cause" id="delete_cause"></textarea>
							
						</div>
						<p class="p_bottom_style">
							TOONALYST 회원을 탈퇴하시면 콘텐츠 이용이 더이상 불가합니다. 또한 탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.
						</p>
						<div class="box">
							<div class="box_pw box_con_style">
								<input type="password" id="join_pw" name="pw" class="form_input" placeholder="비밀번호를 입력해주세요.">
								<span class="join_err_msg">필수 입력 사항입니다.</span>
							</div>
							<!-- "탈퇴하기" 버튼 -->
							<div class="delete_btn">
								<input type="button" class="delete_btn_agree" value="탈퇴하기">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
<script type="text/javascript" src="${path}/resources/js/validation.js"></script>
<script type="text/javascript">

// 가입하기 버튼 활성화 비활성화
var curPw_check = false;

$(document).ready(function(){
	// 현재 비밀번호 유효성 체크
	$('#join_pw').keyup(function(){
		var curPw = $.trim($('#join_pw').val());
		curPw_check = ajaxPwCheck(curPw);
		if(curPw_check){
			$('.delete_btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
		} else {
			$('.delete_btn_agree').css('background', '#d5d5d5').css('border', '1px solid #d5d5d5');
		}
	});
	
	// textarea에 포커스갔을 때 기타input태그의 radio버튼이 checked되게 함
	$("#delete_cause").focus(function(){
		$("#reason_etc").prop("checked", true);
	});
	
	
	
	
});

</script>
</body>
</html>