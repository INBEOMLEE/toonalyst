<%@page import="com.toonalyst.domain.webtoon.WebtoonDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		$(document).ready(function(){
			var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');
		    
		    var today = new Date().getDay();
		    var todayLabel = week[today];

			alert(today);
		});
	</script>
</body>
</html>