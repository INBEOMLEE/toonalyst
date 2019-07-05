<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/common.jsp" %>
<%
response.setStatus(HttpServletResponse.SC_OK);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404 Error</title>
	<style type="text/css">
	.error_page {
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.error_page_content {
		font-size: 80px;
		font-weight: 600;
		color: tomato;
		text-shadow: 2px 2px red;
		font-family: 'Dancing Script', cursive;
	}
	.error_code {
		width: 100%;
		text-align: center;
	}
	
	</style>
</head>
<body>
	<div class="error_page">
		<div class="error_page_content">Sorry, Please wait<br>
			<div class="error_code">500 Error</div>
		</div>
	</div>
</body>
</html>