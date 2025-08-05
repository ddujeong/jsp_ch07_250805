<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 사용 연습</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies){
				out.println(cookie.getName() + "<br>"); // 쿠키의 이름
				out.println(cookie.getValue() + "<br>"); // 쿠키의 값
				out.println(cookie.getMaxAge() + "<br>"); 
				// 쿠키의 유효시간(-1 이 기본값 => 로그아웃 또는 웹브라우저 종료시 쿠키 삭제)
				
			}
		}
	%>

</body>
</html>