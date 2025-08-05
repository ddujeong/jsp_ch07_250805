<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String sid=(String) session.getAttribute("user");
	if(sid == null){
		response.sendRedirect("login.jsp"); 
		// 비로그인 상태에서 웰컴 페이지 방문시 로그인 페이지로 강제 이동
	}
%>
	<h2><%=sid %>님 로그인 성공하셨습니다.</h2>
	<hr>
	<a href="logout.jsp">로그아웃 페이지로 이동</a><br><br>
	<a href="main.jsp"> 메인 페이지로 이동</a>
</body>
</html>