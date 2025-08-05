<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 보기</title>
</head>
<body>
		<h2>내 장바구니 목록</h2>
	<%
		Cookie[] cookies = request.getCookies();
	
		String savedCart = "";
		
		if(cookies != null) { // 쿠키가 null 값이 아닐때만 -> 기존 쿠키 존재할때만 쿠키에 저장된 상품 목록
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("cart")){
					savedCart = cookie.getValue();
				}
			}
		}
		if(savedCart != null){
			String[] carts = savedCart.split("/"); // ""/"을 기준으로 문자열 분리
			for(String cart : carts){
				out.println("*" + cart + "<br>");
			}		
		} else{
			out.println("장바구니가 비어 있습니다.");
		}
	%>
	<hr>
	<a href="removeCart.jsp">장바구니 비우기</a>
</body>
</html>