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
	padding: 15px;
	background: #fbfbfb;
	border-top: 1px solid #d5d5d5;
}
.delete_content {
	margin: 32px 0;
	position: relative;
	font-style: normal;
}
.delete_radio {
	margin-bottom: 12px;
	display: block;
	letter-spacing: -1;
	line-height: 20px;
	font-style: normal;
	padding-left: 3px;
}
.delete_radio > i:before {
	content: '';
	border: 2px solid rgba(1,1,1,0.54);
	background: #fff;
	opacity: .6;
	position: absolute;
	left: 0;
	width: 15px;
	height: 15px;
	border-radius: 50%;	
}
.delete_radio>:checked+i:before {
	border-color: #FF6C36;
	opacity: 1;
}
.delete_radio>:checked+i:after {
	content: '';
	width: 8px;
	height: 8px;
	position: absolute;
	top: 5px;
	left: 5px;
	margin: auto;
	background: #FF6C36;
	border-radius: 50%;
}
.delete_radio>:checked+i:after {
	border-color: #FF6C36;
	opacity: 1;
}
#delete_cause {
	width: 100%;
}
.box_con_style {
	margin-bottom: 10px;
	position: relative;
}
.form_input {
	height: 40px;
	padding: 4px 20px;
	border-width: 0 0 0 1px;
	border:1px solid #d5d5d5;
	font-size: 16px;
	width: 100%;
	background: #fff;
	outline: none;
	margin-top: 10px;
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
.box {
	width: 100%;
	height: 40px;
	position: relative;
	box-sizing: border-box;
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
</style>
</head>
<body>
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
							<label class="delete_radio">
								<input type="radio" name="delete_reason" value="errors">
								<i>이용이 불편하고 장애가 많음</i>
							</label>
							<label class="delete_radio">
								<input type="radio" name="delete_reason" value="errors">
								<i>다른 사이트가 더 좋아서</i>
							</label>
							<label class="delete_radio">
								<input type="radio" name="delete_reason" value="errors">
								<i>사용빈도가 낮아서</i>
							</label>
							<label class="delete_radio">
								<input type="radio" name="delete_reason" value="errors">
								<i>콘텐츠 불만</i>
							</label>
							<label class="delete_radio">
								<input type="radio" name="delete_reason" value="errors">
								<i>기타</i>
							</label>
							<textarea name="delete_cause" id="delete_cause"></textarea>
						</div>
						<p>
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
	var oldpw_check = false;
	var pw_check = false;
	var rpw_check = false;
	var all_check = false;
	
	$(document).ready(function(){
		// ( 현재 비밀번호 유효성 체크 )
		$('#join_oldpw').keyup(function(){
			var oldPw = $.trim($('#join_oldpw').val());
			var curPw = "${sessionScope.loginUser.pw}"
			
			if(oldPw != curPw) { // 실패
				$('.join_err_msg').eq(0).text("현재 비밀번호와 일치하지 않습니다.").css('display', 'inline-block');
				$('.chk').eq(0).css('color', '#d5d5d5');
				oldpw_check = false;
			} else { // 성공
				$('.chk').eq(0).css('color', '#ff6c36');
				$('.join_err_msg').eq(0).css('display', 'none');
				oldpw_check = true;
			}
			check_btn();
		});
		
		// PW 유효성체크 ( 새 비밀번호 체크 )
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
				pw_check = true;
			}
			check_btn();
		});
		
		// RPW 유효성체크 ( 새 비밀번호 재확인 체크 )
		$('#join_rpw').keyup(function(){
			var memPw = $.trim($('#join_pw').val());
			var memRpw = $.trim($('#join_rpw').val());
			// validation에가서 joinValidate의 checkPw다녀옴
			var checkResult = joinValidate.checkRpw(memPw, memRpw);
			
			if(checkResult.code != 0) {
				$('.join_err_msg').eq(2).text(checkResult.desc).css('display', 'inline-block');
				$('.chk').eq(2).css('color', '#d5d5d5');
				rpw_check = false;
			} else { // 성공
				$('.chk').eq(2).css('color', '#ff6c36');
				$('.join_err_msg').eq(2).css('display', 'none');
				rpw_check = true;
			}
			check_btn();
		});
		
		
		// 가입하기 눌렀을 때
		$('.delete_btn_agree').click(function() {
			var oldPw = $.trim($('#join_oldpw').val());
			var memPw = $.trim($('#join_pw').val());
			
			if(all_check == true) { // 유효성체크 모두 통과, 서브밋
				if(oldPw != memPw) {
					$(".join_err_msg").eq(2).css("display", "none");
					$("#delete_form").submit();
				} else {
					$(".join_err_msg").eq(2).text("현재 비밀번호와 새 비밀번호가 같습니다.").css("display", "inline-block");
				}
			} else { // 유효성체크 통과하지 못한 경우
				$(".join_err_msg").eq(2).text("필수사항을 모두 입력해주세요.").css("display", "inline-block");
			}
		});
	});
	
	// 수정하기 버튼의 색 변화
	function check_btn() {
		if
		(   oldpw_check == true
			&& pw_check == true 
			&& rpw_check == true
		) {
			$('.delete_btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
			all_check = true;
		} else {
			$('.delete_btn_agree').css('background', '#d5d5d5').css('border', '1px solid #d5d5d5');
			all_check = false;
		}
	}
</script>
</body>
</html>