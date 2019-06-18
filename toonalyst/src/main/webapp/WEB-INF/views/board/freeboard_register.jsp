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
.writing_area.block {
    width: 100% !important;
}
.form_input.block {
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
#conforms input:hover{
    background-color: #FF6C36;
}
#cancle :hover{
    background-color: #F6F6F6;
}
</style>
</head>
<body>
<div id="counsel_write">
    <h3 class="title first">게시글 작성</h3>
    <form method="post" action="${path}/board/register" id="frm_bin" name="frm_bin">
       <table class="tbl_row">
           <caption class="hidden"></caption>
           <colgroup>
               <col style="width:15%;">
               <col>
           </colgroup>
           <tbody>           
               <tr>
                  <th scope="row">분류</th>
                  <td>건의</td>
               </tr>             
               <tr>
                  <th scope="row"><label for="counsel_title">제목</label></th>
                  <td><input type="text" name="btitle" id="counsel_title" class="form_input block"></td>
               </tr>
               <tr>
                  <th scope="row">
                      <label for="counsel_cnt">수정내용</label>
                  </th>
                  <td>
                      <textarea name="bcontent" id="bcontent" class="writing_area block"></textarea>
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
       <div class="btn">
           <span id="conforms" class="box_btn large w150"><input type="button" id="conform" value="확인"></span>
           <span id="cancle" class="box_btn large w150 white"><a href="${path}/board/list">취소</a></span>
       </div>
       <input type="hidden" name="btext" id="input_btext">
       <input type="hidden" name="bwriter" value="${sessionScope.loginUser.id}">
       <input type="hidden" name="bcategory" value="2">
    </form>
</div> 
    
    
    
<script type="text/javascript">
$(document).on("click", "#conform", function(){
    oEditors.getById["bcontent"].exec("UPDATE_CONTENTS_FIELD", []);
    var title = $("#counsel_title").val();
    var content = $(".writing_area").val();
    
    var text = content.replace(/[<][^>]*[>]/gi, "");
    $('#input_btext').val(text);
    
    if(content == "<p><br></p>") {
       $("#btitle").focus();
       $(".error").css("display", "block");
       return false;
    }
    $("#frm_bin").submit();
});
</script>
<%@ include file="../include/footer.jsp" %> 
</body>
</html>