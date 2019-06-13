var joinValidate = {
	// 결과 메세지를 출력
	resultCode : {
		// 공통
		empty_val : {
			code : 1,
			desc : '필수입력 정보입니다.'
		},
		space_length_val : {
			code : 2,
			desc : '공백없이 입력해주세요.'
		},
		// ID
		success_id : {
			code : 0
		},
		invaild_id : {
			code : 3,
			desc : '올바른 ID를 입력해주세요.'
		},
		length_id : {
			code : 4,
			desc : 'ID는 공백없이 6자 이상~ 16자 이하여야 합니다.'
		},
		overlap_id : {
			code : 5,
			desc : '이미 사용 중인 ID입니다.'
		},
		// PW
		success_pw : {
			code : 0
		},
		invalid_pw : {
			code : 3,
			desc : '올바른 비밀번호(4~12자)를 입력해주세요'
		},
		other_pw : {
			code : 4,
			desc : '입력하신 비밀번호가 일치하지 않습니다.'
		},
		// name 
		success_name : {
			code : 0
		},
		invalid_name : {
			code : 3,
			desc : '이름은 표준한글만 입력가능합니다.'
		},
		length_name : {
			code : 4,
			desc : '이름은 2자 이상~4자 이하만 가능합니다.'
		},
		// phone
		success_phone : {
			code : 0
		},
		invalid_phone : {
			code : 3,
			desc : '휴대폰 번호가 유효하지 않습니다.'
		},
		number_phone : {
			code : 4,
			desc : '숫자만 입력해주세요.'
		},
		length_phone : {
			code : 5,
			desc : '(-) 없이 10, 11자로 입력해주세요.'
		},
		// email
		success_email : {
			code : 0
		},
		invalid_email : {
			code : 3,
			desc : '올바른 이메일을 입력해주세요.'
		}
		
	}, // resultCode 끝 
	
	checkId : function(memId) {
		// ID
		var regEmpty = /\s/g;
		var reg = /[^a-z0-9-_.]+/g;
		
		if(memId == "" || memId.length == 0){
			return this.resultCode.empty_val;
		} else if (memId.match(regEmpty)){
			return this.resultCode.space_length_val;
		} else if (reg.test(memId)){
			return this.resultCode.invalid_id;
		} else if (memId.length < 6 || memId.length > 50) {
			return this.resultCode.length_id;
		} else {
			return this.resultCode.success_id;
		}
		
	}, // checkId 끝 
	checkPw : function(memPw, memRpw) {
		var regEmpty = /\s/g; // 공백문자
		var pwReg= RegExp(/^[a-zA-Z0-9]{4,12}$/); // 비밀번호 체크
		
		if(memPw == "" || memPw.length == 0) {
			return this.resultCode.empty_val;
		} else if(memPw.match(regEmpty)) {
			return this.resultCode.space_length_val;
		} else if(!pwReg.test(memPw)) {
			return this.resultCode.invalid_pw;
		} else {
			return this.resultCode.success_pw;
		} 
	},
	checkRpw : function(memPw, memRpw) {
		var regEmpty = /\s/g; // 공백문자
		var pwReg= RegExp(/^[a-zA-Z0-9]{4,12}$/); // 비밀번호 체크
		
		if(memRpw == "" || memRpw.length == 0) {
			return this.resultCode.empty_val;
		} else if(memRpw.match(regEmpty)) {
			return this.resultCode.space_length_val;
		} else if(!pwReg.test(memRpw)) {
			return this.resultCode.invalid_pw;
		} else {
			if(memPw != memRpw) {
				$('.chk').eq(2).css('color', '#d5d5d5');
				$('.join_err_msg').eq(2).css('display', 'inline-block').text(this.resultCode.other_pw);
				return this.resultCode.other_pw;
			} 
			return this.resultCode.success_pw;
		} 
	},
	checkName : function(name) {
		var regEmpty = /\s/g; // 공백문자
		var regKor = /[^가-힣]/; // 올바른 이름 형식
		
		if(name == "" || name.length == 0) {
			return this.resultCode.empty_val;
		} else if(name.match(regEmpty)) {
			return this.resultCode.space_length_val;
		} else if(regKor.test(name)) {
			return this.resultCode.invalid_name;
		} else if(name.length > 4 || name.length < 2) {
			return this.resultCode.length_name;
		} else {
			return this.resultCode.success_name;
		} 
	},
	checkEmail : function(email) {
		var regEmpty = /\s/g; // 공백문자			
		var regEmail = RegExp(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i); // 이메일유효성검사
		
		if(email == "" || email.length == 0) {
			return this.resultCode.empty_val;
		} else if(email.match(regEmpty)) {
			return this.resultCode.space_length_val;
		} else if(!regEmail.test(email)) {
			return this.resultCode.invalid_email;
		} else {
			return this.resultCode.success_email;
		} 
	},
	checkPhone : function(phone) {
		var regEmpty = /\s/g; // 공백문자			
		
		if (phone == "" || phone.length == 0) {
			return this.resultCode.empty_val;
		} else if (phone.match(regEmpty)) {
			return this.resultCode.space_length_val;
		} else if ($.isNumeric(phone) == false) {
			return this.resultCode.number_phone;
		} else if (phone.indexOf("01") != 0) {
			return this.resultCode.invalid_phone;
		} else if (!(phone.length == 10 || phone.length == 11)) {
			return this.resultCode.length_phone;
		} else {
			return this.resultCode.success_phone;
		}
	}
} // joinValidation 끝

function ajaxCheck(memId) {
	var return_val = false;
	$.ajax({
		url: "idcheck",
		type: "POST",
		dataType: "json",
		data: "id="+memId,
		async: false,
		success: function(data) {
			if(data == "1") {
				$('.chk').eq(0).css('color', '#d5d5d5');
				$('.join_err_msg').eq(0).text(joinValidate.resultCode.overlap_id.desc).css('display', 'inline-block');
				return_val = false;
			} else {
				$('.chk').eq(0).css('color', '#ff6c36');
				$('.join_err_msg').eq(0).css('display', 'none');
				return_val = true;
			} 
		},
		error: function() {
			alert("System Error!!!");
		}
	});
	return return_val;
}