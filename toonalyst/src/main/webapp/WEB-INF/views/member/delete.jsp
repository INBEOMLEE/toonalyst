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
.reason {
	display: flex;
	justify-content: flex-start;
}
.delete_radio {
	letter-spacing: -1;
	line-height: 26px;
	padding-left: 3px;
	color: dimgray;
	background: url(${path}/resources/img/radio_off.png) no-repeat;
	background-position: left top;
	background-size: 25px;
	padding-left: 25px;
}
#delete_cause {
	width: 95%;
	height: 50px;
	display: none;
	margin-left: 25px;
}
.radio_style {
	margin: 7px 0;
	display: none;
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
/* 비밀번호 입력 input */
.form_input {
	height: 40px;
	border-width: 0 0 0 1px;
	border:1px solid #d5d5d5;
	padding-left: 10px;
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
	z-index: 550;
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
#delete_modal_content {
	width: 300px;
	height: 200px;
	text-align: center;
	display: inline-block;
	background-color: white;
	border-radius: 10px;
	position: relative;
}
#close_btn {
	position: absolute;
	top: 7px;
	right: 2px;
	width: 30px;
	height: 30px;
	cursor: pointer;
	color: lightgray;
}
#close_btn:hover {
	color: dimgray;
}
#delete_modal_area {
	width: 100%;
	height: 200px;
}
.wrap_btn {
	display: flex;
	justify-content: space-evenly;
}
.modal_con {
	font-size: 18px;
	margin: 50px auto;
}
#delete_no_btn	{
	background-color: #ff6c36;
	width: 100px;
	height: 40px;
	line-height: 40px;
	color: white;
}
#delete_yes_btn	{
	background-color: #d5d5d5;
	width: 100px;
	height: 40px;
	line-height: 40px;
	color: white;
}
</style>
</head>
<body>
	<!-- 탈퇴하기 모달창 -->
	<div id="delete_modal">
		<div id="delete_modal_content">
			<div id="close_btn"><i class="fas fa-times"></i></div>
			<div id="delete_modal_area">
				<div id="wrap_delete">
					<div class="modal_con">정말 탈퇴하시겠습니까?</div>
					<div class="wrap_btn">
						<a id="delete_no_btn"> 
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
	<section>
		<div class="section_outline">
			<div class="section_inline">
				<div class="join_input">
					<!-- 타이틀 -->
					<div class="join_title">
					 	<h2>계정 탈퇴</h2>
					</div>
					<form action="${path}/member/delete" method="POST" name="delete_form" id="delete_form">
						<!-- 입력부분 -->
						<p><b>${sessionScope.loginUser.name}</b>님의 탈퇴 사유를 알려주세요. 더 좋은 TOONALYST가 되기 위해 노력하겠습니다.</p>
						<div class="delete_content">
							<div class="reason">
								<input type="radio" id="reason_uncomfortable" class="radio_style" name="delete_reason" value="errors">
								<label for="reason_uncomfortable" class="delete_radio">이용이 불편하고 장애가 많음</label>
							</div>
							<div class="reason">
								<input type="radio" id="reason_competitor" class="radio_style" name="delete_reason" value="errors">
								<label for="reason_competitor" class="delete_radio">다른 사이트가 더 좋아서</label>
							</div>
							<div class="reason">
								<input type="radio" id="reason_frequency" class="radio_style" name="delete_reason" value="errors">
								<label for="reason_frequency" class="delete_radio">사용빈도가 낮아서</label>
							</div>
							<div class="reason">
								<input type="radio" id="reason_content" class="radio_style" name="delete_reason" value="errors">
								<label for="reason_content"class="delete_radio">콘텐츠 불만</label>
							</div>
							<div class="reason">
								<input type="radio" id="reason_etc" class="radio_style" name="delete_reason" value="errors">
								<label for="reason_etc" class="delete_radio">기타</label>
							</div>
							<textarea name="delete_cause" id="delete_cause"></textarea>
						</div>
						<p class="p_bottom_style">
							TOONALYST 회원을 탈퇴하시면 콘텐츠 이용이 더이상 불가합니다. 또한 탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.
						</p>
						<div class="box">
							<div class="box_pw box_con_style">
								<input type="password" id="cur_pw" name="pw" class="form_input" placeholder="비밀번호를 입력해주세요.">
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

// 탈퇴하기 버튼 활성화 비활성화
var curPw_check = false;

$(document).ready(function(){
	// 현재 비밀번호 유효성 체크
	$('#cur_pw').keyup(function(){
		var curPw = $.trim($('#cur_pw').val());
		curPw_check = ajaxPwCheck(curPw);
		if(curPw_check){
			$('.delete_btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
		} else {
			$('.delete_btn_agree').css('background', '#d5d5d5').css('border', '1px solid #d5d5d5');
		}
	});

	// 탈퇴이유가 호버되었을 때 글씨가 진해짐
	$('.delete_radio').hover(function(){
		$(this).css('color', 'black').css('font-weight', '600');
		$(this).css('background-image', 'url(${path}/resources/img/radio_on.png)');
	});
	$('.delete_radio').mouseout(function(){
		if(!$(this).parent().find('input').prop('checked')){
			$(this).css('color', 'dimgray').css('font-weight', 'normal');
			$(this).css('background-image', 'url(${path}/resources/img/radio_off.png)');
		}
	});
	$('.delete_content').find('.radio_style').change(function(){
		for(var i = 0; i < $('.delete_radio').length ; i++){
			if(!$('.reason').eq(i).find('input').prop('checked')){
				$('.reason').eq(i).find('.delete_radio').css('color', 'dimgray').css('font-weight', 'normal');
				$('.reason').eq(i).find('.delete_radio').css('background-image', 'url(${path}/resources/img/radio_off.png)');
			}
		}
		// 기타를 선택했을 때 textarea 나타남
		if($('.reason').eq(4).find('input').prop('checked')){
			$('#delete_cause').css('display', 'block');
		}else{
			$('#delete_cause').css('display', 'none');
		}
	});
	
	// 탈퇴하기 모달창 열고, 닫기
	$('.delete_btn').click(function(){
		$('#delete_modal').css('display', 'flex');
	});
	$('#close_btn').click(function(){
		$('#delete_modal').css('display', 'none');
	});
	$('#delete_no_btn').click(function(){
		$('#delete_modal').css('display', 'none');
	});
	// 모달창에서 탈퇴하기 누를 경우 탈퇴됨
	$('#delete_yes_btn').click(function(){
		location.href="${path}/member/deleteplay";
	});
	
	
});

</script>
<%@ include file="../include/footer.jsp" %>		
</body>
</html>