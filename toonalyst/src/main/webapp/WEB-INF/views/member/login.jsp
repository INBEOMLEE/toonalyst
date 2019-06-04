<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
	.login_outline {
		width: 100%;
		min-height: 500px;
		padding-bottom: 80px; 
	}
	.login_inline {
		width: 1180px;
		margin: 0 auto;
		padding: 70px 60px 0;
	}
	.login_field {
		width: 440px;
		height: 357px;
		margin: 0 auto;
		border: none;
	}
	.legend {
		display: block;
		padding: 0 0 30px;
		letter-spacing: -.07em;
		text-align: center;
		font-weight: 400;
		font-size: 22px;
		color: #3a3a3a;
	}
	.legend > b {
		font-size: 22px;
		font-weight: 700;
		color: #3a3a3a;
	}
	.login_content {
		margin-bottom: 10px;
	}
	.login_content label {
		display: none;
	}
	.login_input {
		width: 100%;
		height: 60px;
		padding: 4px 16px;
		border-color: #d5d5d5;
		font-size: 16px;
		border: 1px solid #dcdcdc;
		background: #fff;
		color: #666;
	}
	.login_btn {
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
	}
	.idpw_find_btn {
		display: inline-block;
		width: 100%;
		border: 1px solid #e5e5e5;
		background: #e5e5e5;
		color: #606060;
		font-weight: bold;
		padding: 13px 20px;
		font-size: 16px;
		cursor: pointer;
		outline: none;
	}
	.login_err_msg {
		display: none;
		width: 100%;
		padding: 10px;
		margin-bottom: 10px;
		text-align: center;
		color: tomato;
		letter-spacing: -1;
		font-size: 15px;
	}
</style>
</head>
<body>
	<section>
		<div class="login_outline">
			<div class="login_inline">
				<fieldset class="login_field">
					<legend class="legend">
						<b>로 그 인</b>
					</legend>
					<form action="" method="POST" id="login_form">
						<div class="login_content">
							<label for="login_id">아이디</label>
							<input type="text" name="id" id="login_id" class="login_input" placeholder="아이디">
						</div>
						<div class="login_content">
							<label for="login_pw">비밀번호</label>
							<input type="password" name="pw" id="login_pw" class="login_input" placeholder="비밀번호">
						</div>
						<div class="login_err_msg">아이디 또는 비밀번호를 다시 확인해주세요.</div>
						<button type="button" class="login_btn">로그인</button>
						<button type="button" class="idpw_find_btn">아이디 / 비밀번호 찾기</button>
					</form>
				</fieldset>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#login_id').focus();
			
			$('.login_btn').click(function(){
				var id = $.trim($('#login_id').val());
				var pw = $.trim($('#login_pw').val());
				
				var regEmpty = /\s/g;
				
				if(id == null || id.length == 0) {
					$('.login_err_msg').text('아이디를 입력해주세요.').css('display', 'block');
					$('#login_id').focus();
					return false;
				} else if(id.match(regEmpty)) {
					$('.login_err_msg').text('아이디 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#login_id').select();
					return false;
				}
				
				if(pw == null || pw.length == 0) {
					$('.login_err_msg').text('비밀번호를 입력해주세요.').css('display', 'block');
					$('#login_pw').focus();
					return false;
				} else if(pw.match(regEmpty)) {
					$('.login_err_msg').text('비밀번호 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#login_pw').select();
					return false;
				}
				
				$('.login_err_msg').css('display', 'none');
			});
			
		});
	</script>
</body>
</html>