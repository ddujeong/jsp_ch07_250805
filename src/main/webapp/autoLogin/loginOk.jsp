<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String mid = request.getParameter("id");
	String mpw = request.getParameter("pw");
	String rememberId = request.getParameter("rememberId");
	// System.out.println(rememberId);
	
	if(mid.equals("tiger") && mpw.equals("12345") ){ // 참이면 로그인 성공
		if (rememberId != null){ // 참이면 체크박스에 체크가 된 상태로 넘어옴
		Cookie cookie = new Cookie("saveId", mid); // 쿠키에 saveid == tiger 값 생성
		cookie.setMaxAge(60*60*24*7); // 7일간 쿠키 저장
		response.addCookie(cookie); // 쿠키를 클라이언트의 컴퓨터로 보내기
	} else { // 체크 박스를 체크하지 않은 상태면 쿠키 삭제
		Cookie cookie = new Cookie("saveId", mid); // 쿠키에 saveid == tiger 값 생성
		cookie.setMaxAge(0); // 7일간 쿠키 저장
		response.addCookie(cookie); // 쿠키를 클라이언트의 컴퓨터로 보내기
	}
		// 쿠키의 여부와 상관 없이 세션은 전송(로그인)
		session.setAttribute("user", mid);
		response.sendRedirect("welcome.jsp"); // 로그인 성공시 welcome페이지로 강제이동
	} else {
		response.sendRedirect("login.jsp"); // 로그인 실패시 login페이지로 강제이동
	}
%>
</body>
</html>