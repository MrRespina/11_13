<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
<%-- 입력 > 출력 
		> 점검중
		
	페이지 이동 방법
		1. 수동(사용자가 뭔가 액션을 취하면 이동) - request
			> <a> : 해당 부분 클릭하면 페이지 이동
			> <form> + <button> : <button>을 클릭 or <input>에서 엔터 치면 이동.
			> JavaScript(location.href) : 이벤트를 지정해두고 사용자가 그 이벤트대로 진행하면 이동
			
		2. 자동(사용자의 액션과는 상관없이 이동)
			> redirect : output.jsp의 제일 상단 Java코드 안에서 response.sendRedirect("test.jsp");
		--%>
	<h1>점검중 ... (23.11.13 월요일 PM 12:25 ~ ????)</h1>
</body>
</html>