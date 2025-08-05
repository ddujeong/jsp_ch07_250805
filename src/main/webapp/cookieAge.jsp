<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키의 유효시간 설정</title>
</head>
<body>
	<%
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		cookie.setMaxAge(60*60*24*7); // 쿠키의 유효시간을 초단위로 설정(일주일로 설정)
		response.addCookie(cookie); // 클라이언트에게 변경된 쿠키시간 다시 보내기
	}
	for(Cookie cookie : cookies){
		cookie.setMaxAge(0); // 쿠키의 유효시간을 초단위로 설정(쿠키삭제)
		response.addCookie(cookie); // 클라이언트에게 변경된 쿠키시간 다시 보내기
	}
	
	%>
</body>
</html>