<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.1.2/handlebars.min.js"></script>
<link rel="stylesheet" href="${path }/resources/lightbox/css/lightbox.css">
<script src="${path }/resources/lightbox/js/lightbox.js1"></script>
<meta charset="UTF-8">
<title>게시글 작성</title>
<script type="text/javascript" src="${path}/resources/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<style type="text/css">
#counsel_write{
    width: 1180px;
    margin: 0 auto;
    padding-bottom: 140px;
}
h3.title.first {
    padding-top: 50;
}
h3.title {
    padding: 40px 0 16px;
    font-size: 18px;
}
.tbl_row {
    table-layout: fixed;
    width: 100%;
    border-top: 1px solid #e0e0e0;
    border-collapse: collapse;
    border-spacing: 0;
}
.tbl_row th {
    padding: 15px 0 15px 30px;
    border-bottom: 1px solid #e0e0e0;
    font-weight: normal;
    text-align: left;
    vertical-align: middle;
}
.tbl_row td {
    padding: 15px 5px;
    border-bottom: 1px solid #e0e0e0;
    text-align: left;
    vertical-align: middle;
    word-break: break-all;
    word-wrap: break-word;
    display: table-cell;
}
.writing_area {
    width: 100%;
}
.writing_area {
	width: 99.8% !important;
    min-width: 260px;
}
.form_input {
    width: 100% !important;
}
.form_input {
    height: 34px;
    padding: 4px 10px;
    border: 1px solid #dcdcdc;
    background: #fff;
    color: #666;
    font-size: 12px;
    transition: all .3s ease;
}
#counsel_write textarea {
    height: 250px;
}
#counsel_write .btn {
    margin-top: 30px;
    text-align: center;
}
.box_btn.w150 > * {
    width: 150px;
}
.box_btn.large > * {
    padding: 12px 16px;
    font-size: 14px;
}
.box_btn > * {
    display: inline-block;
    margin: 0;
    padding: 8px 12px;
    border: 1px solid #dedfda;
    outline: none;
    background: #dedfda;
    color: #fff !important;
    font-size: 14px;
    font-weight: normal;
    text-align: center;
    vertical-align: middle;
    line-height: 1.4;
    white-space: nowrap;
    cursor: pointer;
    -webkit-appearance: none;
    transition: all .2s ease;
}
.box_btn.white * {
    border-color: #d5d5d5;
    background: #fff;
    color: #666 !important;   
}
#confirms input:hover{
    background-color: #FF6C36;
}
#cancle :hover{
    background-color: #F6F6F6;
}
.modify_err_msg {
	width: 100%;
	height: auto;
}
.register_err_message {
	width: 1180px;
	margin: 0 auto;
	text-align: center;
	color: tomato;
	display: none;
}
.form-group .board_div {
	border-bottom: 1px solid #e0e0e0;
	width : 100%;
	text-align: center;
	height: 250px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #515151;	
}
.uploadedList {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}
</style>
</head>
<body>
	<div id="counsel_write">
		<h3 class="title first">게시글 <c:out value="${empty bDto.bno ? '등록' : '수정' }"/></h3>
		<form method="post" action="${path}/board/<c:out value="${empty bDto.bno ? 'register':'update' }" />" id="frm_bin" name="frm_bin">
			<table class="tbl_row">
				<caption class="hidden"></caption>
				<colgroup>
					<col style="width:15%;">
				</colgroup>
				<tbody>           
					<tr>
						<th scope="row">분류</th>
						<c:if test="${bcategory == 0}">
							<td>공지</td>
						</c:if>
						<c:if test="${bcategory == 1}">
							<td>질문</td>
						</c:if>
						<c:if test="${bcategory == 2}">
							<td>자유</td>
						</c:if>
					</tr>             
					<tr>
						<th scope="row">
							<label for="counsel_title">제목</label>
						</th>
						<td>
							<input type="text" name="btitle" value="${bDto.btitle}" id="counsel_title" class="form_input">
						</td>
					</tr>
					<tr>
						<th scope="row">
							<label for="counsel_cnt">내용</label>
						</th>
						<td>
							<textarea name="bcontent" id="bcontent" class="writing_area" >${bDto.bcontent}</textarea>
						</td>
						<script type="text/javascript">
							var oEditors = [];
							nhn.husky.EZCreator.createInIFrame({
								oAppRef: oEditors,
								elPlaceHolder: "bcontent",
								sSkinURI: "${path}/resources/smarteditor/SmartEditor2Skin.html",
								fCreator: "createSEditor2",
								htParams: { fOnBeforeUnload : function(){} } /* 에디터 내용 변경 경고창 끄기 */
							});
						</script>             
					</tr>
				</tbody>
			</table>
			<!-- 게시글 첨부파일 등록 -->
			<div class="write_input_wrap form-group">
				<div class="board_div fileDrop">
					<p>
						<i class="fas fa-paperclip"></i>
						첨부파일을 드래그 해주세요.
					</p>
				</div>
				<div class="write_input_wrap">
					<ul id="uploadedList" class="mailbox-attachments clearfix uploadedList"></ul>
				</div>
				
				
			</div>
			<div class="modify_err_msg">
				<div class="register_err_message"></div>
			</div>
			<div class="btn">
				<span id="confirms" class="box_btn large w150">
					<input type="button" id="confirm" value="<c:out value="${empty bDto.bno ? '등록':'수정' }"/>">
				</span>
				<span id="cancle" class="box_btn large w150 white"><a href="${path}/board/list">취소</a></span>
			</div>
			
			<input type="hidden" name="bcategory" value="${bcategory}">
			<input type="hidden" name="btext" id="input_btext">
			<c:if test="${!empty bDto.bno}">
				<input type="hidden" name="bno" value="${bDto.bno}">
			</c:if>
			<input type="hidden" name="bwriter" value="${sessionScope.loginUser.id}">
		</form>
	</div> 
    
    
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
//Handlebars 파일템플릿 컴파일
var fileTemplate = Handlebars.compile($("#fileTemplate").html());

//수정시 로컬드라이브에서 삭제할 기존 첨부파일 목록
var deleteFileList = new Array();

$(document).ready(function(){
	
	var bno = '${one.bno}';
	if(bno == '') {  // 게시글 등록.
	} else {  // 게시글 수정
		var str='';
		str += "<input type='hidden' name='bno' value='" + bno + "'>";
		$("#frm_add").append(str);
	}
	
	// 첨부파일 목록 출력
	listAttach();
	
	// 답글이면 title 수정 못하게 막음
	var re_level = "${one.re_level}";
	if(re_level > 0) {
		$('#board_title').attr('readonly', 'readonly');
	}
	
	// Drag & Drop 기본효과 막음
	// : 작업안하면 실제 파일이 열림
	$('.fileDrop').on('dragenter dragover', function(e){
		e.preventDefault();
	});
	
	// 1. 파일을 드래그 앤 드롭했을 때
	$('.fileDrop').on('drop', function(e){
		// 드래그앤드롭시 파일 실행을 막음
		e.preventDefault();
		
		// Ajax 파일 -> D:\\upload
		// 첫번째 첨부파일
		
		var files = e.originalEvent.dataTransfer.files; // 드래그에 전달된 첨부파일 전부... 첨부가 3개가 되어있을 때 5개를 더 올리면 드래그앤드롭했을 때 files로 들어가는데 
		var file = files[0]; // 그 중 하나만 꺼내옴 0번째꺼 
		// 폼 데이터에 첨부파일 추가
		var formData = new FormData(); // 폼 객체
		formData.append("file", file); // 폼에 파일변수 추가. 기존에 있는 것에 맨 마지막에 추가된다.
		// 서버에 파일 업로드(백그라운드에서 실행됨)
		// contentType : false => multipart/form-data로 처리
		$.ajax({
			url : "${path}/upload/uploadAjax",
			data : formData,
			dataType : "text",
			processData : false,
			contentType : false,
			type : "POST",
			success : function(data){ // 썸네일 이름이 들어온다 \2019\07\12\s_5be0b7af-cf5e-461b-a02c-dcdd5b6474e8_오렌지.png
				console.log(data);
				// data :업로드한 파일 정보와 http 상태 코드
				printFiles(data); // 첨부파일 출력 메서드 호출
			}
		});
	});
	// 첨부파일 삭제 함수
	$(".uploadedList").on("click", ".delBtn", function(event) {
		var bno = '${one.bno}';
		var that = $(this);
		if(bno == 0) { // 게시글 등록
			$.ajax({
				url: "${path}/upload/deleteFile",
				type: "post",
				data: { fileName: $(this).attr("data-src") },
				dataType: "text",
				success: function(result) {
					if(result == "deleted") {
						that.parents("li").remove();
					}
				}, error: function() {
					alert("System Error!!!");
				}
			});
		} else {
			/* 
				첨부파일 x버튼 클릭시 바로바로 드라이브에서 삭제해버리면
				수정작업중 수정을 취소했을 때 기존에 파일이 사라지는 문제가 발생
				따라서 삭제를 눌렀을 때 화면단에서는 삭제가 되지만 드라이브와 DB에서
				삭제하지 않고 삭제목록(list)을 따로 저장해 둔 후 실제 유저가
				수정버튼을 클릭했을 때 form태그에 append하고 가져가서 파일을 삭제
				및 수정
			*/
			var arr_size = deleteFileList.length;
			deleteFileList[arr_size] = $(this).attr("data-src");
			$(this).parents("li").next("input").remove();
			$(this).parents("li").remove();
			/* for (var i = 0; i <= deleteFileList.length; i++)
			console.log(deleteFileList[i]); */
		}
	});
});


$(document).on("click", "#confirm", function(){
    oEditors.getById["bcontent"].exec("UPDATE_CONTENTS_FIELD", []);
    var title = $("#counsel_title").val();
    var content = $(".writing_area").val();
    
    var text = content.replace(/[<][^>]*[>]/gi, "");
    $('#input_btext').val(text);
    
     if(title == ""){   	
    	 $('.register_err_message').text("제목을 입력해주세요.").css('display', 'block');
        return false;
     } else if(content == "<p><br></p>") {
    	 $('.register_err_message').text("제목을 입력해주세요.").css('display', 'block');
        return false;
     }
     $('.register_err_message').text("").css('display', 'none');
     
     
     var str="";
		// uploadedList 내부의 .file 태그 각각 반복
		$("#uploadedList .file").each(function(i){ // each는 for문 i는 index값
			console.log(i);
			//hidden 태그 구성, files배열에 들어있는데
			str += "<input type='hidden' name='files["+i+"]' value='" + $(this).val()+"'>";
		});
		
		// 로컬드라이브에 저장되어있는 해당 게시글 
		// 첨부파일 삭제
		if(deleteFileList.length > 0) {
			$.post('${path}/upload/deleteAllFile', {files:deleteFileList}, function(){});
		}
		
		//폼에 hidden 태그들을 붙임
		$("#frm_bin").append(str);
    	$("#frm_bin").submit();
	});
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
    var fileInfo = getFileInfo(data);
    /* console.log(fileInfo); */
    // Handlebars 파일 템플릿에 파일 정보들을 바인딩하고 HTML 생성
    var html = fileTemplate(fileInfo);
    html += "<input type='hidden' class='file' value='"
		+fileInfo.fullName+"'>";
    // Handlebars 파일 템플릿 컴파일을 통해 생성된 HTML을 DOM에 주입
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

//첨부파일 리스트를 출력하는 함수
function listAttach(){
	var listCnt = 0;
	$.ajax({
		type: "post",
		url: "${path}/board/getAttach/${one.bno}",
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
				printFiles(e); // 첨부파일 출력 메서드 호출
			});
		}
	});
	return listCnt;
}

</script>
<%@ include file="../include/footer.jsp" %> 
</body>
</html>