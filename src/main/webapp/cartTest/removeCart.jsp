<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 비우기</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("cart", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		
	%>
	<a href="viewCart.jsp">장바구니 목록 보기</a><br><br>
	<a href="productList.jsp">상품 추가 페이지 가기</a>
</body>
</html>