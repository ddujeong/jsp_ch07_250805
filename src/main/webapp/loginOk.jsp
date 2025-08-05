<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%!
		String id;
		String pw;
	%>
	<%
		request.setCharacterEncoding("utf-8");
		
		id = request.getParameter("loginId");
		pw = request.getParameter("loginPw");
		
		if(id.equals("tiger") && pw.equals("12345")){
			session.setAttribute("sid", id); // 로그인 성공 -> 세션에 아이디값 저장 
			Cookie cookie = new Cookie("cid", id); // 쿠키생성
			response.addCookie(cookie); // 생성한 쿠키를 클라이언트에 전송(생성과 세트)
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>