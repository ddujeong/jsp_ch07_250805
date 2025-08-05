<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
<script type="text/javascript">
	
	function checkForm() {
		var userId = document.loginForm.id.value;
		var userPw= document.loginForm.pw.value;
		if(userId != "tiger" || userPw != "12345"){
		alert("아이디 비밀번호가 일치하지 않습니다.");
		return false;
	}
	}
</script>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies(); // 기존에 존재하는 쿠키 가져오기
	// 사이트 첫 방문시 또는 쿠키 유효시간 지난 후 방문시 cookies == null 
	String savedId = "";
	if(cookies != null){ // 쿠키가 존재할 때만 쿠키 추출
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("saveId")){ // 쿠키 값중 이름이 saveId 인 쿠키를 추출
				savedId = cookie.getValue(); // 쿠키 saveId 이름으로 저장된 실제 아이디 (tiger) 값 가져오기
			} 
		}
	}
%>
	<h2>회원 로그인</h2>
	<hr>
	<form action="loginOk.jsp" name = "loginForm" method="post" onsubmit="return checkForm()">
	아이디 : <input type="text" name="id" value="<%= savedId %>" > <br><br>
	비밀번호 : <input type="text" name="pw"> <br><br>
	<input type="checkbox" name= "rememberId" <%=(savedId.isEmpty() ? "" :"checked") %>>아이디 저장
	<input type="submit" value="로그인"><br><br>
	</form>
</body>
</html>