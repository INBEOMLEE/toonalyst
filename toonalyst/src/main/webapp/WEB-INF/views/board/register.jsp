<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>   
<!DOCTYPE html>
<html>
<head>
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
    
    
    
<script type="text/javascript">
$(document).ready(function(){
	// Drag & Drop 기본효과 막음
	// : 작업안하면 실제 파일이 열림
	$('.fileDrop').on('dragenter dragover', function(e){
		e.preventDefault();
	});
	$('.fileDrop').on('drop', function(e){ // 드롭했을 때
		e.preventDefault();
		
		// Ajax 파일 -> D:\\upload
		// 첫번째 첨부파일
		
		var files = e.originalEvent.dataTransfer.files; // 드래그에 전달된 첨부파일 전부
		var file = files[0]; // 그 중 하나만 꺼내옴
		// 폼 데이터에 첨부파일 추가
		var formData = new FormData(); // 폼 객체
		formData.append("file", file); // 폼에 파일변수 추가
		// 서버에 파일 업로드(백그라운드에서 실행됨)
		// contentType : false => multipart/form-data로 처리
		$.ajax({
			url : "${path}/upload/uploadAjax",
			data : formData,
			dataType : "text",
			processData : false,
			contentType : false,
			type : "POST",
			success : function(data){
				console.log(data);
				// data :업로드한 파일 정보와 http 상태 코드
				printFiles(data); // 첨부파일 출력 메서드 호출
			}
		});
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
     $("#frm_bin").submit();
});


</script>
<%@ include file="../include/footer.jsp" %> 
</body>
</html>