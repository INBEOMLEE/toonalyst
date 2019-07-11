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
	.error_box {
		border: 1px solid black;
		padding: 10px 20px 20px 20px;
		width: 400px;
		height: 150px;
		border-radius: 10px;
	}
	.error_msg {
		border-bottom: 1px solid #dadada;
		font-size: 30px;
		padding-bottom: 10px;
		text-align: center;
	}
	.error_code {
		width: 100%;
		height: 115px;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 30px;
		font-weight: 600;
	}
	</style>
</head>
<body>
	<div class="error_page">
		<div class="error_box">
			<div class="error_msg">
				<i class="fas fa-pray"></i> Please wait
			</div>
			<div class="error_code">403 Error</div>
		</div>
	</div>
</body>
</html>