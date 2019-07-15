<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<%@ include file="../include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.1.2/handlebars.min.js"></script>
<link rel="stylesheet" href="${path }/resources/lightbox/css/lightbox.css">
<script src="${path }/resources/lightbox/js/lightbox.js1"></script>
<meta charset="UTF-8">
<title>TOONALYST</title>
<style type="text/css">
.notice {
	margin-top: 50px;
}
.sticky {
	height: 56px;
	margin-bottom: 50px;
}
.sub_tab {
	position: relative;
	top: 0;
	margin: 0 0 50px;
}
.board_menu {
	width: 1180px;
	margin: 0 auto;
}
.board_menu ul li.active {
	background: #FF6C36;
}
.sub_tab ul {
	display: table;
	table-layout: fixed;
	margin-bottom: -1px;
	width: 100%;
	height: 54px;
	border-collapse: collapse;
	text-align: center;
}
/* li.selecte */
.sub_tab ul > li {
	display: table-cell;
	border: 1px solid #fff;
	background: #d5d5d5;
	color: white;
}
/* li.selected a 태그필요 */
.sub_tab ul > li a {
	display: block;
	padding: 16px;
	font-size: 16px;
	cursor: pointer;
}
.notice_body {
	width: 1180px;
	margin: 0 auto;
	padding-bottom: 80px;
	min-height: 500px;
}
.board_list {
	width: 100%;
}
.board_view_table {
	border-top: 1px solid #e0e0e0;
	border-collapse: collapse;
	width: 1180px;
}
.board_view_table td, .board_view_table th{
	border-bottom: 1px solid #e0e0e0;
	font-size: 14px;
	padding: 10px 0px;
	text-align: center;
}
.board_view_content {
	width: 1180px;
	height: auto;
	padding: 60px 30px;
	font-size: 18px;
}
.tbl_title, .tbl_viewcnt, .tbl_viewcnt_con, .tbl_writer, .tbl_good, .tbl_good_con, .tbl_date, .tbl_date_con {
	width: 3%;
}
.tbl_title_con {
	width: 12%;
}
.tbl_writer_con {
	width: 9%;
}
.list_btn_box {
	display: flex;
	width: 1180px;
	border-top: 1px solid #e0e0e0;
	border-bottom: 1px solid #e0e0e0;
}
.list_btn_box1 {
	flex: 1;
	text-align: left;
}
.list_btn_box2 {
	flex: 1;
	text-align: right;
}
.list_btn {
	display: inline-block;
	width: 100px;
	height: 35px;
    padding: 8px 12px;
    margin: 20px 0;
    border: 1px solid #dedfda;
    background: #dedfda;
    color: white;
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    transition: 0.3s
	
}
.list_btn:hover {
	background: #FF6C36;
	border: 1px solid #FF6C36;
}
/* 댓글창 디자인 */
.comment_outline {
	width: 100%;
}
.comment_inline {
	width: 1180px;
	margin: 0 auto;
}
.comment_area {
	padding: 10px;
	width: 100%;
	height: auto;
}
.each_space {
	margin: 20px 0;
}
.comment_box {
	display: flex;
	margin: 20px 0;
}
.writer_comment {
	width: 100%;
}
.writer_emo img {
	width: 100%;
}
.top_comment {
	/* border-bottom: 1px solid #333; */
	display: inline-block;
	font-size: 21px;
	font-weight: bold;
	padding: 5px;
	margin-bottom: 10px;
}
.comment_cnt {
	color: tomato;
}
.comment_empty_box {
	border: 1px solid lightgray;
	border-radius: 5px;
	height: 80px;
	text-align: center;
	line-height: 80px;
	background-color: #fafafa;
}
.writing_box {
	display: flex;
	width: 1180px;
	border-radius: 5px;
	height: auto;
	justify-content: space-between;
	align-items: center;
}

.reg_date {
	display: inline-block;
	color: dimgray;
	font-size: 15px;
}
.comment_head {
	margin: 5px 10px;
	font-weight: bold;
}
.comment_body {
	width: 100%;
	height: auto;
	margin-top: 10px;
	padding:10px;
	border-bottom: 1px solid #eaeaea;
}
.comment_delete_btn {
	color: #FF6C36;
	cursor: pointer;
}
#login_txt {
	color: #FF6C36;
	font-weight: bold;
}
.writing_area {
	width: 1000px;
	height: 50px;
	line-height: 50px;
	padding-left: 15px;
}
.btn_comment {
	float: right;
	margin-top: 30px;
}
.writer_top {
	font-weight: bold;
	display: inline-block;
	width: 170px;
	height: 50px;
	border: 1px solid rgb(169, 169, 169);
	line-height: 50px;
	text-align: center;
	margin-right: 2px;

}
.btn_comment {
	display: inline-block;
	width: 100px;
	height: 50px;
    padding: 8px 12px;
    margin: 20px 0;
    border: 1px solid #dedfda;
    background: #dedfda;
    color: white;
    font-size: 15px;
    font-weight: 500;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    transition: 0.3s;
    margin-left: 2px;
    
}
.btn_comment:hover {
	background: #FF6C36;
	border: 1px solid #FF6C36;
}
#txt_box {
	color: #FF6C36;
	font-size: 13px;
	display: none;
	margin: 6px 5px;
}

#user img, .comment_head img {
	vertical-align: middle;
	margin-right: 3px;
}

</style>
</head>
<body>
	<div class="notice">
		<!-- 게시판 목록 부분 -->
		<div class="sticky">
			<div class="sub_tab">
				<div class="board_menu">
					<ul>
						<li>
							<a href="${path}/board/list?bcategory=0" class="sub_notice">NOTICE</a>
						</li>
						<li>
							<a href="${path}/board/list?bcategory=1">Q&A</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 게시글 영역 -->
		<div class="notice_body">
			<div class="board_list">
				<c:if test="${bcategory == 0}">
					<table class="board_view_table">
						<colgroup>
							<col style="width: 3%">
							<col style="width: 12%">
							<col style="width: 3%">
							<col style="width: 3%">
						</colgroup>
						<tr>
							<th>제목</th>
							<td>${bDto.btitle}</td>
							<th>조회수</th>
							<td>${bDto.bviewcnt}</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>${bDto.bwriter}</td>
							<th>작성일</th>
							<td>
								<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />${regdate}
							</td>
						</tr>
					</table>
				</c:if>
				<c:if test="${bcategory == 1 }">
					<table class="board_view_table">
						<tr>
							<th class="tbl_title">제목</th>
							<td colspan="3"  class="tbl_title_con">${bDto.btitle}</td>
							<th class="tbl_viewcnt">조회수</th>
							<td class="tbl_viewcnt_con">${bDto.bviewcnt}</td>
						</tr>
						<tr>
							<th class="tbl_writer">작성자</th>
							<td class="tbl_writer_con">${bDto.bwriter}</td>
							<th class="tbl_good">좋아요</th>
							<td class="tbl_good_con">0</td>
							<th class="tbl_date">작성일</th>
							<td class="tbl_date_con">
								<fmt:formatDate value="${bDto.bregdate}" pattern="yyyy-MM-dd" var="regdate" />
								${regdate}
							</td>
						</tr>
					</table>
				</c:if>
				
				<div class="board_view_content">${bDto.bcontent}</div>
				<div class="write_input_wrap">
					<ul id="uploadedList" class="mailbox-attachments clearfix uploadedList"></ul>
				</div>
				<div class="list_btn_box">
					<div class="list_btn_box1">
						<c:if test="${!empty sessionScope.loginUser.id}">
							<c:if test="${bcategory == 1}">
								<button class="list_btn" id="answer_btn">답글</button>
							</c:if>
						</c:if>
						<c:if test="${sessionScope.loginUser.id == bDto.bwriter || sessionScope.loginUser.toonadmin == 1}">
							<button class="list_btn" id="update_btn">수정</button>
							<button class="list_btn" id="remove_btn">삭제</button>
						</c:if>
					</div>
					<div class="list_btn_box2">
						<c:if test="${!empty sessionScope.loginUser.id}">
							<c:if test="${bcategory == 1}">
								<div class="list_btn" id="btn_good">좋아요</div>
							</c:if>
						</c:if>
						<div class="list_btn" id="board_list_btn">목록</div>
					</div>
				</div>
				<!-- 댓글영역 -->
				<div class="comment_outline">
					<div class="comment_inline" id="commentList">
					<!-- 여기에 commentlist띄움 -->
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer.jsp" %>  
<script id="fileTemplate" type="text/x-handlebars-template">
    <li>
        <div class="mailbox-attachment-icon has-img">
            <center><img src="{{imgSrc}}" alt="Attachment" class="s_img"></center>
        </div>
        <div class="mailbox-attachment-info">
            <a href="{{originalFileUrl}}" class="mailbox-attachment-name">
                <i class="fa fa-paperclip"></i> {{originalFileName}}
            </a>
            <span class="btn btn-default btn-xs pull-right delBtn" data-src="{{basicFileName}}">
                <i class="fas fa-times"></i>
            </span>
        </div>
    </li>
</script>
<script type="text/javascript">
var fileTemplate = Handlebars.compile($("#fileTemplate").html());
$(document).ready(function(){
	//Handlebars 파일템플릿 컴파일
	
	var bcategory = "${bcategory}";
	
	if(bcategory == 0) {
		$('.board_menu ul li').removeClass("active");
		$('.board_menu ul li').eq(0).addClass("active");
	} else if (bcategory == 1) {
		$('.board_menu ul li').removeClass("active");
		$('.board_menu ul li').eq(1).addClass("active");
	}
	
	// 좋아요 실시간 현황
	good_check();
	
	// 문서가 준비되면 댓글 목록을 조회하는 AJAX실행
	comment_list();
	
	// 첨부파일 출력
	var listCnt = listAttach();
	
	// 첨부파일 0건일 때 '첨부파일이 없습니다' 출력
	if(listCnt == 0){
		var text = '<span class="no_attach">첨부파일이 없습니다.</span>';
		$('#uploadedList').html(text);
	}
	
	$('.board_menu ul li').click(function(){
		$('.board_menu ul li').removeClass("active");
		$(this).addClass("active");
	});
	
	// 댓글 등록 버튼
	$('.btn_comment').hover(function(){
		$(this).css('background-color', 'white').css('color','#333');
	},
	function(){
		$(this).css('background-color', '#333').css('color','white');
	});
	
	// 좋아요 클릭했을 때 증감
	$('#btn_good').click(function(){
		var id = "${sessionScope.loginUser.id}";
		var bno = "${bDto.bno}";
		$.ajax({
			type:"post",
			url: "${path}/board/goodswitch",
			dataType: "json",
			data: "id=" + id + "&bno=" + bno,
			success: function(data){
				good_check();
				$('.tbl_good_con').text(data);
			},
			error: function(){
				alert("SYSTEM ERROR!");
			}
		});
	});
	
});
	//좋아요 확인 함수
	function good_check(){
		var id = "${sessionScope.loginUser.id}";
		var bno = "${bDto.bno}";
		$.ajax({
			type:"post",
			url: "${path}/board/goodcheck",
			dataType: "json",
			data: "bno=" + bno + "&id="+ id,
			success: function(result){ 
				if(result == "0"){
					 // 좋아요 안누른 상태
					 $('#btn_good').css('border', '1px solid #dedfda').css('color', 'white').css('background', '#dedfda');
				} else {
					 // 좋아요 누른 상태
					 $('#btn_good').css('border', '1px solid #FF6C36').css('color', 'white').css('background', '#FF6C36');
				}
			}
		});
		
	}

	//댓글 띄우는 함수
	function comment_list(){		
		$.ajax({
			type:"get",
			url: "${path}/comment/list",
			data: "bno=${bDto.bno}",
			success: function(result){ 
				$('#commentList').html(result);
			}
		});
	}

	//첨부파일 리스트를 출력하는 함수
	function listAttach(){
		var listCnt = 0;
		$.ajax({
			type: "post",
			url: "${path}/board/getAttach/${bDto.bno}",
			async: false,
			success: function(list){
				// list : json
				//console.log(list);
				listCnt = list.length;
				
				/* console.log(list.length); */
				/* 
					jQuery each()는 반복문
					i와 e는 index와 element로
					json에서 { 0: "apple.png"}일 때
					index는 0, element는 apple.png가 됨
				*/
				$(list).each(function(i, e){
					/* console.log(list) */
					console.log(e);
					printFiles(e); // 첨부파일 출력 메서드 호출
				});
			}
		});
		return listCnt;
	}
	
	//파일 정보 처리
	function getFileInfo(fullName) {
	    var originalFileName;   // 화면에 출력할 파일명
	    var imgSrc;                   // 썸네일 or 파일아이콘 이미지 파일 출력 요청 URL
	    var originalFileUrl;       // 원본파일 요청 URL
	    var uuidFileName;       // 날짜경로를 제외한 나머지 파일명 (UUID_파일명.확장자)
	    var basicFileName = fullName;      // 삭제시 값을 전달하기 위한 파일이름을 줄이지 않은 url
		
	    // 이미지 파일이면
	    if (checkImageType(fullName)) {
	        imgSrc = "${path}/upload/displayFile?fileName=" + fullName; // 썸네일 이미지 링크
	        // 실제 uuid가 붙은 원본파일 이름
	        // substr(0, 12) -> 0부터 12까지 자른다
	        // substr(14) -> 14부터 끝까지
	        // 이렇게 하면 12, 13이 빠진다 (s_)가 빠진다.
	        uuidFileName = fullName.substr(14);  
	        var originalImg = fullName.substr(0, 12) + fullName.substr(14);
	        // 원본 이미지 요청 링크
	        originalFileUrl = "${path}/upload/displayFile?fileName=" + originalImg;
	    } else {
	        imgSrc = "${path}/resources/img/file-icon.png"; // 파일 아이콘 이미지 링크
	        uuidFileName = fullName.substr(12);
	        // 파일 다운로드 요청 링크
	        originalFileUrl = "${path}/upload/displayFile?fileName=" + fullName; // 변수만 만든 상태
	    }
	    originalFileName = uuidFileName.substr(uuidFileName.indexOf("_") + 1); // 오렌지.png
		 // 전체 파일명의 크기가 14보다 작으면 그대로 이름 출력,
	    // 14보다 크면 실행
	    if(originalFileName.length > 14) {
	    	// 앞에서부터 11글자 자름
	    	var shortName = originalFileName.substr(0, 10);
	    	// .을 기준으로 배열 생성
	    	var formatVal = originalFileName.split(".");
		// formatVal = originalFileName.substr(originalFileName.length-3);
		// 파일명에 .이 여러개 들어가 있을수도 있음
		// 배열크기를 구해와서 무조건 맨 마지막 확장자부분 출력되게 함
		var arrNum = formatVal.length - 1
		// 맨 처음 문자열 10글자 + ... + 확장자
		originalFileName = shortName + "..." + formatVal[arrNum];
	    }
	    return {originalFileName: originalFileName, imgSrc: imgSrc, originalFileUrl: originalFileUrl, fullName: fullName, basicFileName: basicFileName}; // json타입
	}
	//첨부파일 출력
	function printFiles(data) {
		// data = \2019\07\12\s_5be0b7af-cf5e-461b-a02c-dcdd5b6474e8_오렌지.png
	    // 파일 정보 처리
	    console.log("첨부파일 출력"+data);
	    var fileInfo = getFileInfo(data);
	    /* console.log(fileInfo); */
	    // Handlebars 파일 템플릿에 파일 정보들을 바인딩하고 HTML 생성
	    var html = fileTemplate(fileInfo);
	    html += "<input type='hidden' class='file' value='"
			+fileInfo.fullName+"'>";
	    // Handlebars 파일 템플릿 컴파일을 통해 생성된 HTML을 DOM에 주입
	    console.log("첨부파일 출력문"+ html);
	    $(".uploadedList").append(html); // 추가, 즉 하나씩 들어가게 된다.
	    // 이미지 파일인 경우 aaaaaaaaaaa파일 템플릿에 lightbox 속성 추가
	    if (fileInfo.fullName.substr(12, 2) === "s_") { // 12부터 2개를 읽어서 잘라라 s_는 이미지라고 판별났으니까 라이트박스 속성을 추가하겠다는 뜻이다.
	        // 마지막에 추가된 첨부파일 템플릿 선택자
	        var that = $(".uploadedList li").last();
	        // lightbox 속성 추가
	        that.find(".mailbox-attachment-name").attr("data-lightbox", "uploadImages"); // 이미지네임부분을 클릭하면 라이트박스가 실행되게 함. 원래는 다운되는 기능이 있다. 근데 이 기능을 쓰면 라이트박스 기능이 추가된다.
	        // 내가 첨부하는 기능이기 때문에 다운로드 기능 대신에 라이트박스 속성을 추가해준다.
	        // 파일 아이콘에서 이미지 아이콘으로 변경
	        that.find(".fa-paperclip").attr("class", "fa fa-camera");
	    }
	}
	function getOriginalName(fileName){
		if(checkImageType(fileName)){ //이미지 파일이면 skip
			return;
		}
		var idx=fileName.indexOf("_")+1; //uuid를 제외한 파일이름
		return fileName.substr(idx);
	}
	function getImageLink(fileName){
		if(!checkImageType(fileName)){//이미지 파일이 아니면 skip
			return;
		}
		var front=fileName.substr(0,12);//연월일 경로
		var end=fileName.substr(14);// s_ 제거
		return front+end;
	}
	function checkImageType(fileName){
		var pattern=/jpg|gif|png|jpeg/i; //정규표현식(대소문자 무시) jpg, gif, png, jpeg, i가 있는지 없는지 찾는다
		return fileName.match(pattern); //규칙에 맞으면 true
	}
	// 댓글 등록 
	$(document).on("click", "#comment_btn", function(){
		var content = $("#textarea").val();
		
		if(content == null || content.length == 0) { 
			// 유효성체크(Null 체크)
			$("#textarea").focus();
			$("#txt_box").css("display", "inline-block");
			return false;
		} else {
			// 게시글번호 담아서 보냄
			var bno = '${bDto.bno}';
			$('#re_bno').val(bno);
			$.ajax({ 
				type:"POST",
				url: "${path}/comment/create",
				data: $("#frm_comment").serialize(),
				dataType: "json",
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				success: function(data){
					if(data == 1) {
						comment_list(); 
						$('#textarea').val(""); 
					}
				},
				error: function(){
					alert("System Error!!!");
				}
			});
		}
	});

	//댓글 삭제
	$(document).on("click", ".comment_delete_btn", function(){
		var cno = $(this).attr("data_num");
		var id = "${sessionScope.loginUser.id}";
		var bno = '${bDto.bno}';
		
		$.ajax({
			url: "${path}/comment/delete",
			data: "cno=" + cno + "&id="+ id + "&bno=" + bno,
			success: function(){
				comment_list();
			},
			error: function(){
				alert("System Error!!!");
			}
		});
	});


	$(document).on("click", "#remove_btn", function(){
		location.href="${path}/board/delete?bno=${bDto.bno}&bcategory=${bcategory}";
			
	});


	$(document).on("click", "#update_btn", function(){
		location.href="${path}/board/register?bno=${bDto.bno}&bcategory=${bcategory}";
	});
	
	$(document).on("click", "#board_list_btn", function(){
		location.href="${path}/board/list?bcategory=${bcategory}";
	});
	
	$(document).on("click", "#answer_btn", function(){
		location.href="${path}/board/answer?bno=${bDto.bno}";
	});
	
</script>
</body>
</html>