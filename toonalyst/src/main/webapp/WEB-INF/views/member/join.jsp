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
								<input type="text" id="constract_use" name="constract_use" class="form_input" value="이용약관 동의 (필수)" readonly="readonly">
								<span class="down_btn"><i class="fas fa-chevron-down"></i></span>
							</div>
							<div class="constract_content">
								<div>내용 삽입<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터<br>엔터</div>
							</div>
							<div class="box_name box_con_style constract_input_box">
								<span class="chk"><i class="fas fa-check"></i></span>
								<input type="text" id="constract_private" name="constract_private" class="form_input" value="개인정보 수집·이용 동의 (필수)" readonly="readonly">
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
					document.getElementById("sample6_detailAddress").value = extraAddr;
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
	
	// id 유효성체크
	$("#join_id").keyup(function() {
		var memId = $.trim($("#join_id").val());
		// validation에서 checkId() 함수를 실행 후 결과값(code, desc)을 변수 checkResult에 담음
		var checkResult = joinValidate.checkId(memId);
		
		if(checkResult.code != 0) { // 실패, 경고메세지 출력
			$('.join_err_msg').eq(0).text(checkResult.desc).css('display', 'inline-block').css('color', '#FF3636');
			$('.chk').eq(0).css('color', '#d5d5d5');
			return false;
		} else { // 성공했기 때문에 중복인지 Ajax로 검증
			/* if(ajaxCheck(memId) == "1"){
				return true; // 사용가능한 ID
			} */
			$('.chk').eq(0).css('color', '#ff6c36');
			$('.join_err_msg').eq(0).css('display', 'none');
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
		alert(checkResult.code + ", " + checkResult.desc);
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(1).text(checkResult.desc).css('display', 'inline-block').css('color', '#FF3636');
			$('.chk').eq(1).css('color', '#d5d5d5');
			alert("성공못함");
			return false;
		} else {
			$('.join_err_msg').eq(1).text(checkResult.desc).css('display', 'inline-block').css('color', '#FF3636');
			if (memRpw != null || memRpw.length != 0){
				if(memPw == memRpw){
					$('.chk').eq(1).css('color', '#ff6c36');
					$('.join_err_msg').eq(1).css('display', 'none');
					return true;
				} else {
					$('.join_err_msg').eq(2).text(checkResult.desc).css("display", "inline-block").css("color", "#FF3636");
					return false;
				}	
			}
			return true;
		}
		return false;
	});
	
	// 비밀번호 재확인(비교)
	$('#join_rpw').keyup(function(){
		var memPw = $.trim($('#join_pw').val());
		var memRpw = $.trim($("#join_rpw").val());
		
		var checkResult = joinValidate.checkRpw(memPw, memRpw);
		
		if(checkResult.code != 0){
			$('.join_err_msg').eq(2).text(checkResult.desc).css('display', 'inline-block').css('color', '#FF3636');
			return false;
		} else {
			$('.join_err_msg').eq(2).text(checkResult.desc).css('display', 'inline-block').css('color', '#FF3636');
			if (memPw != null || memPw.length != 0) {
				if (memPw == memRpw) {
					$('.chk').eq(2).css('color', '#ff6c36');
					$('.join_err_msg').eq(2).css('display', 'none');
					return true;
				} else {
					$('.join_err_msg').eq(2).text(checkResult.desc).css("display", "inline-block").css("color", "#FF3636");
					return false;
				}
			}
			return true;
		}
		return false;
	});
	
	
	// 이름
	$('#join_name').keyup(function(){
		var name = $.trim($('#join_name').val());
		
		var checkResult = joinValidate.checkName(name);
		if(checkResult.code != 0) { // 실패, 경고메세지 출력
			$('.join_err_msg').eq(3).text(checkResult.desc).css('display', 'inline-block').css('color', '#FF3636');
			$('.chk').eq(3).css('color', '#d5d5d5');
			return false;
		} else { 
			$('.chk').eq(3).css('color', '#ff6c36');
			$('.join_err_msg').eq(3).css('display', 'none');
			return true;
		}
		return false;
	});
	
	
	
	
	
	
});
</script>
</body>
</html>