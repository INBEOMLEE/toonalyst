<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.chpw_outline {
		width: 100%;
		min-height: 500px;
		padding-bottom: 80px;
	}
	.chpw_inline {
		width: 1180px;
		margin: 0 auto;
		padding: 70px 60px 0;
	}
	.chpw_title {
		font-size: 24px;
		font-weight: bold;
		text-align: center;
		color: #191919;
		padding-bottom: 60px;
	}
	.chpw_content {
		width: 440px;
		margin: 0 auto;
	}
	.id_title {
		padding: 25px 0;
		font-weight: bold;
		font-size: 15px;
	}
	.id_content {
		margin-bottom: 10px;
	}
	.id_content label {
		display: none;
	}
	.modify_id {
	    padding-bottom: 20px;
	    font-size: 12px;
	    font-weight: bold;
	    color: #606060;
	}
	.idpw_input {
		width: 100%;
		height: 52px;
		padding: 4px 16px;
		border-color: #d5d5d5;
		font-size: 16px;
		border: 1px solid #dcdcdc;
		background: #fff;
		color: #666;
	}
	.idpw_err_msg {
		display: none;
		width: 100%;
		padding: 10px;
		margin-bottom: 10px;
		text-align: center;
		color: tomato;
		letter-spacing: -1;
		font-size: 15px;
	}
	.id_btn {
		display: inline-block;
		width: 100%;
		border: 1px solid #606060;
		background: #606060;
		color: #fff;
		font-weight: bold;
		padding: 13px 20px;
		font-size: 16px;
		cursor: pointer;
		margin-bottom: 10px;
		outline: none;
		transition: 0.3s;
	}
	.pw_content {
		margin-bottom: 10px;
	}
	.pw_content label {
		display: none;
	}
	.pw_btn {
		display: inline-block;
		width: 100%;
		border: 1px solid #dedfda;
		background: #dedfda;
		color: white;
		font-weight: bold;
		padding: 14px 20px;
		font-size: 16px;
		cursor: pointer;
		margin-bottom: 10px;
		outline: none;
		transition: 0.3s;
	}
	

</style>
</head>
<body>
<section>
		<div class="chpw_outline">
			<div class="chpw_inline">
				<h2 class="chpw_title">비밀번호 변경</h2>
				<div class="chpw_content">					
					<p class="modify_id"> ${name} ( ${id} )</p>
					<form action="${path}/member/changepw" method="POST" id="pw_form">
						<div class="pw_content">
							<label for="find_pw">비밀번호 변경</label>
							<input type="password" name="pw" id="find_pw" class="idpw_input" placeholder="변경할 비밀번호">
						</div>
						<div class="join_err_box">
							<span class="idpw_err_msg">필수 입력 사항입니다.</span>
						</div>
						<div class="pw_content">
							<label for="find_repw">비밀번호 변경 재확인</label>
							<input type="password" id="find_repw" class="idpw_input" placeholder="변경할 비밀번호 확인">
						</div>						
						<div class="join_err_box">
							<span class="idpw_err_msg">필수 입력 사항입니다.</span>
						</div>
						<button type="button" class="pw_btn">변경하기</button>
						<input type="hidden" name="id" value="${id}">
					</form>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript" src="${path}/resources/js/validation.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var pw_check = false;
			
			// PW 유효성체크
			$('#find_pw').keyup(function(){
				var memPw = $.trim($('#find_pw').val());
				var memRpw = $.trim($('#find_repw').val());
				// validation에가서 joinValidate의 checkPw다녀옴
				var checkResult = joinValidate.checkPw(memPw, memRpw);
				
				if(checkResult.code != 0) { // 실패
					$('.idpw_err_msg').eq(0).text(checkResult.desc).css('display', 'inline-block');
					pw_check = false;
				} else { // 성공
					$('.idpw_err_msg').eq(0).css('display', 'none');
					if(memPw == memRpw) {
						$('.idpw_err_msg').eq(1).css('display', 'none');
						pw_check = true;
					} else {
						pw_check = false;
					}
				}
				
				if(pw_check == true) {
					$('.pw_btn').css("background", "#FF6C36");
				} else {
					$('.pw_btn').css("background", "##dedfda");
				}
			});
			
			// RPW 유효성체크
			$('#find_repw').keyup(function(){
				var memPw = $.trim($('#find_pw').val());
				var memRpw = $.trim($('#find_repw').val());
				// validation에가서 joinValidate의 checkPw다녀옴
				var checkResult = joinValidate.checkRpw(memPw, memRpw);
				
				if(checkResult.code != 0) {
					$('.idpw_err_msg').eq(1).text(checkResult.desc).css('display', 'inline-block');
					pw_check = false;
				} else { // 성공
					$('.idpw_err_msg').eq(1).css('display', 'none');
					if(memPw == memRpw) {
						$('.idpw_err_msg').eq(0).css('display', 'none');
						pw_check = true;
					} else {
						pw_check = false;
					}
				}
				
				if(pw_check == true) {
					$('.pw_btn').css("background", "#FF6C36");
				} else {
					$('.pw_btn').css("background", "#dedfda");
				}
			});
			
			$('.pw_btn').click(function(){
				if(pw_check == true) {
					$('#pw_form').submit();
				}
			});
			
		});
		
	
	</script>
<%@ include file="../include/footer.jsp" %>  	
</body>
</html>