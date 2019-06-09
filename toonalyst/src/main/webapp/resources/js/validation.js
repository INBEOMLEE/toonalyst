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
			code : 0,
			desc : '멋진 ID입니다.'
		},
		invaild_id : {
			code : 3,
			desc : '올바른 ID를 입력해주세요.'
		},
		length_id : {
			code : 4,
			desc : 'iD는 공백없이 6자 이상~ 50자 이하여야 합니다.'
		},
		overlap_id : {
			code : 5,
			desc : '이미 사용 중인 ID입니다.'
		},
		// PW
		success_pw : {
			code : 0,
			desc : '사용가능한 비밀번호입니다.'
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
			code : 0,
			desc : '멋진 이름입니다.'
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
			code : 0,
			desc : '사용가능한 번호입니다.'
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
			desc : '(-)없이 10, 11자로 입력해주세요.'
		},
		// email
		success_email : {
			code : 0,
			desc : '사용가능한 이메일입니다.'
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
			if(memRpw != null || memRpw.length != 0) {
				if(memPw == memRpw) {
					$('#inputrpw').next().text(this.resultCode.success_pw.desc)
							             .css("display", "block")
							             .css("color", "#0000FF");
				} else {
					$('#inputrpw').next().text(this.resultCode.other_pw.desc)
							             .css("display", "block")
							             .css("color", "#FF3636");
					return false;
				}
			}
			return this.resultCode.success_pw;
		} 
	}
} // joinValidation 끝

function ajaxCheck(memId) {
	// 10. ajax 시작!
	//     목적지: idCheck.fcryan
	//     전달데이터: 이름표가 id인 memId 데이터
	//     데이터 포장방법: json
	//     데이터 전달방법: POST방식
	$.ajax({
		url: "idCheck.fcryan",
		type: "POST",
		dataType: "json",
		data: "id="+memId,
		success: function(data) {
			if(data.message == "-1") {
				$("#inputid").next().text("이미 사용 중인 아이디 입니다.")
				                    .css("display", "block")
				                    .css("color", "#FF3636");
			} else {
				$("#inputid").next().text("멋진 ID네요.")
					                .css("display", "block")
					                .css("color", "#0000FF");
			} 
		},
		error: function() {
			alert("System Error!!!");
		}
	});
}