<%@page import="com.toonalyst.domain.webtoon.WebtoonDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<WebtoonDTO> list = (List<WebtoonDTO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%for(WebtoonDTO wDto : list){ %>
		<%=wDto.toString() %><br>
	<%} %>
</body>
</html>