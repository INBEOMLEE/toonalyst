<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
	.idpw_outline {
		width: 100%;
		min-height: 500px;
		padding-bottom: 80px;
	}
	.idpw_inline {
		width: 1180px;
		margin: 0 auto;
		padding: 70px 60px 0;
	}
	.idpw_title {
		font-size: 24px;
		font-weight: bold;
		text-align: center;
		color: #191919;
		padding-bottom: 60px;
	}
	.idpw_content {
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
	.idpw_input {
		width: 100%;
		height: 60px;
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
	.pw_title {
		padding: 25px 0;
		font-weight: bold;
		font-size: 15px;
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
	

</style>
</head>
<body>
	<section>
		<div class="idpw_outline">
			<div class="idpw_inline">
				<h2 class="idpw_title">아이디 / 비밀번호 찾기</h2>
				<div class="idpw_content">
					<div class="id_title">아이디 찾기</div>
					<form action="" method="POST" id="id_form">
						<div class="id_content">
							<label for="find_id_name">이름</label>
							<input type="text" name="name" id="find_id_name" class="idpw_input" placeholder="이름">
						</div>
						<div class="id_content">
							<label for="find_id_phone">전화번호</label>
							<input type="text" name="phone" id="find_id_phone" class="idpw_input" placeholder="전화번호">
						</div>
						<div class="idpw_err_msg">이름 또는 전화번호를 다시 확인해주세요.</div>
						<button type="button" class="id_btn">확인</button>
					</form>
					<div class="pw_title">비밀번호 찾기</div>
					<form action="" method="POST" id="pw_form">
						<div class="pw_content">
							<label for="find_pw_id">아이디</label>
							<input type="text" name="name" id="find_pw_id" class="idpw_input" placeholder="아이디">
						</div>
						<div class="pw_content">
							<label for="find_pw_name">이름</label>
							<input type="text" name="name" id="find_pw_name" class="idpw_input" placeholder="이름">
						</div>
						<div class="pw_content">
							<label for="find_pw_phone">전화번호</label>
							<input type="text" name="phone" id="find_pw_phone" class="idpw_input" placeholder="전화번호">
						</div>
						<div class="idpw_err_msg">아이디와 이름 또는 전화번호를 다시 확인해주세요.</div>
						<button type="button" class="pw_btn">확인</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.id_btn').click(function(){
				var name = $.trim($('#find_id_name').val());
				var phone = $.trim($('#find_id_phone').val());
				
				var regEmpty = /\s/g;
		
				if(name == null || name.length == 0) {
					$('.idpw_err_msg').eq(0).text('이름을 입력해주세요.').css('display', 'block');
					$('#find_id_name').focus();
					return false;
				} else if(name.match(regEmpty)) {
					$('.idpw_err_msg').eq(0).text('이름 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#find_id_name').select();
					return false;
				}
				
				if(phone == null || phone.length == 0) {
					$('.idpw_err_msg').eq(0).text('전화번호를 입력해주세요.').css('display', 'block');
					$('#find_id_phone').focus();
					return false;
				} else if(phone.match(regEmpty)) {
					$('.idpw_err_msg').eq(0).text('전화번호 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#find_id_phone').select();
					return false;
				}
				
				$('.idpw_err_msg').eq(0).css('display', 'none');
				$.ajax({
					url: "${path}/member/idfind",					
					type: "POST",	
					dataType: "text", 
					data:  "id="+id,
					success: function(data) {
					  	alert(data);
					},
					error: function() {
						alert("System Error!!!");
					}
				});			
				
			});
			
			
			$('.pw_btn').click(function(){
				var id = $.trim($('#find_pw_id').val());
				var name = $.trim($('#find_pw_name').val());
				var phone = $.trim($('#find_pw_phone').val());
				
				var regEmpty = /\s/g;
		
				if(id == null || id.length == 0) {
					$('.idpw_err_msg').eq(1).text('아이디를 입력해주세요.').css('display', 'block');
					$('#find_pw_id').focus();
					return false;
				} else if(id.match(regEmpty)) {
					$('.idpw_err_msg').eq(1).text('아이디 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#find_pw_id').select();
					return false;
				}
				
				if(name == null || name.length == 0) {
					$('.idpw_err_msg').eq(1).text('이름을 입력해주세요.').css('display', 'block');
					$('#find_pw_name').focus();
					return false;
				} else if(name.match(regEmpty)) {
					$('.idpw_err_msg').eq(1).text('이름 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#find_pw_name').select();
					return false;
				}
				
				if(phone == null || phone.length == 0) {
					$('.idpw_err_msg').eq(1).text('전화번호를 입력해주세요.').css('display', 'block');
					$('#find_pw_phone').focus();
					return false;
				} else if(phone.match(regEmpty)) {
					$('.idpw_err_msg').eq(1).text('전화번호 안에 공백이 포함되어 있습니다.').css('display', 'block');
					$('#find_pw_phone').select();
					return false;
				}
				
				$('.idpw_err_msg').eq(1).css('display', 'none');
					location.href = "${path}/member/changepw";
				
			});
		});
		
	
	</script>
<%@ include file="../include/footer.jsp" %>			
</body>
</html>