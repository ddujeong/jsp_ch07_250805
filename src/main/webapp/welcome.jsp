<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공화면</title>
</head>
<body>
	<%
		// 쿠키 배열에서 각각의 쿠키에 저장된값 가져오기
		Cookie[] cookies = request.getCookies(); // 반환타입 -> 쿠키의 배열
		for(Cookie cookie : cookies){
			String cValue = cookie.getValue(); // 쿠키의 값 가져오기
			if(cValue.equals("tiger")){
				out.println(cValue + " 님 로그인 성공하셨습니다.");	
			}
		}
		
	%>
</body>
</html>