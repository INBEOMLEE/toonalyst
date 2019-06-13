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
	color: tomato;
	letter-spacing: -1;
	font-size: 15px;
	color: #FF3636;
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
.modify_err_box {
	width: 440px;
	text-align: center;
}
#last_err_box {
	margin-top: 10px;
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
					<form action="${path}/member/update" method="POST" name="modify_form" id="modify_form">
						<!-- 입력부분 -->
						<div class="join_content">
							<span class="con_title">기본정보입력(필수)</span>
							<div class="box">
								<div class="box_id box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_id" maxlength="16" name="id" class="form_input" placeholder="아이디" readonly="readonly" value="${mDto.id}">
								</div>
								<div class="modify_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_name box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_name" name="name" class="form_input" placeholder="이름" value="${mDto.name}">
								</div>
								<div class="modify_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_email box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_email" name="email" class="form_input" placeholder="이메일" value="${mDto.email}">
								</div>
								<div class="modify_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_phone box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" id="join_phone" name="phone" class="form_input" placeholder="전화번호" value="${mDto.phone}">
								</div>
								<div class="modify_err_box">
									<span class="join_err_msg">필수 입력 사항입니다.</span>
								</div>
								<div class="box_addr box_con_style">
									<span class="chk"><i class="fas fa-check"></i></span>
									<input type="text" name="zipcode" id="sample6_postcode" class="addr_btn form_input join_zipcode" readonly="readonly" placeholder="우편번호" value="${mDto.zipcode}"> 
									<input type="button" id="addr_btn" onclick="sample6_execDaumPostcode()" class="btn_normal" value="우편번호 찾기"><br>
									<input type="text" name="addr1" id="sample6_address" placeholder="주소" class="addr_btn addr_style join_addr1" readonly="readonly" value="${mDto.addr1}"><br> 
									<input type="text" name="addr2" id="sample6_detailAddress" class="addr_btn addr_style join_addr2" placeholder="상세항목" value="${mDto.addr2}">
								</div>
							</div>
						</div>
						<div class="modify_err_box" id="last_err_box">
							<span class="join_err_msg">필수 입력 사항입니다.</span>
						</div>
						<!-- 수정하기 버튼 -->
						<div class="join_btn">
							<input type="button" class="join_btn_agree" value="수정하기">
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
					document.getElementById("sample6_detailAddress").value = '';
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

// 가입하기 버튼 활성화 비활성화
var name_check = true;
var email_check = true;
var phone_check = true;
var addr_check = true;
var all_check = true;

$(document).ready(function(){
	
	$('.chk').css('color', '#ff6c36');
	$('.join_btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
	
	// 우편번호, 주소 클릭시 다음주소 API 창 출력
	$('.addr_btn').click(function() {
		var zipcode = $('.addr_btn').eq(4).val();
		var addr = $('.addr_btn').eq(4).val();
		if (zipcode = "" || addr == "") {
			$('#addr_btn').click();
		}
	});
	
	// NAME 유효성 체크
	$('#join_name').keyup(function(){
		var name = $.trim($('#join_name').val());
		var checkResult = joinValidate.checkName(name);
		
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(1).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(1).css('color', '#d5d5d5');
			name_check = false;
		} else { // 성공
			$('.chk').eq(1).css('color', '#ff6c36');
			$('.join_err_msg').eq(1).css('display', 'none');
			name_check = true;
		}
		check_btn();
	});
	
	// EMAIL 유효성 체크
	$("#join_email").keyup(function() {
		var email = $.trim($('#join_email').val());
		var checkResult = joinValidate.checkEmail(email);
	
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(2).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(2).css('color', '#d5d5d5');
			email_check = false;
		} else { // 성공
			$('.chk').eq(2).css('color', '#ff6c36');
			$('.join_err_msg').eq(2).css('display', 'none');
			email_check = true;
		}
		check_btn();
	});
	
	// 전화번호 유효성 체크
	$("#join_phone").keyup(function() {
		var phone = $.trim($('#join_phone').val());
		var checkResult = joinValidate.checkPhone(phone);
	
		if(checkResult.code != 0) {
			$('.join_err_msg').eq(3).text(checkResult.desc).css('display', 'inline-block');
			$('.chk').eq(3).css('color', '#d5d5d5');
			phone_check = false;
		} else { // 성공
			$('.chk').eq(3).css('color', '#ff6c36');
			$('.join_err_msg').eq(3).css('display', 'none');
			phone_check = true;
		}
		check_btn();
	});
	
	// 주소 유효성 체크
	$(".join_addr2").keyup(function() {
		var zipcode = $.trim($('.join_zipcode').val());
		var addr1 = $.trim($('.join_addr1').val());
		var addr2 = $.trim($('.join_addr2').val());
	
		if(zipcode != "" && addr1 != "" && addr2 != ""){
			$('.chk').eq(4).css('color', '#ff6c36');
			$('.join_err_msg').eq(4).css('display', 'none');
			addr_check = true;
		} else {
			$('.chk').eq(4).css('color', '#d5d5d5');
			$('.join_err_msg').eq(4).css('display', 'inline-block');
			addr_check = false;
		}
		check_btn();
	});
	
	// 가입하기 눌렀을 때
	$('.join_btn_agree').click(function() {
		if(all_check == true) { // 유효성체크 모두 통과, 서브밋
			$(".join_err_msg").eq(4).css("display", "none");
			$("#modify_form").submit();
		} else { // 유효성체크 통과하지 못한 경우
			$(".join_err_msg").eq(4).text("필수사항을 다시 확인해주세요.").css("display", "inline-block");
		}
	});
});

// 수정하기 버튼의 색 변화
function check_btn() {
	if(
		name_check == true
		&& email_check == true
		&& phone_check == true
		&& addr_check == true
	  ) {
		// 모든 유효성 체크 통과
		$('.join_btn_agree').css('background', '#ff6c36').css('border', '1px solid #ff6c36');
		all_check = true;
	} else {
		// 유효성 체크 실패
		$('.join_btn_agree').css('background', '#d5d5d5').css('border', '1px solid #d5d5d5');
		all_check = false;
	}
}


</script>
</body>
</html>