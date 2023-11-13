<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function go2(){
		 
		location.href = "Second.jsp?a=5&b=10";
	}
</script>
</head>
<body>
	<h1>First</h1>
	<a href="Second.jsp?a=10&b=20">A태그 사용하여 [GET 방식 요청]</a>
	
	<div onclick="go2()">JavaScript로 [GET 방식 요청]</div>
	
	<!-- [GET/POST] -->
 	<form action = "Second.jsp">
 		a : <input name = "a"><br>
 		b : <input name = "b"><br>
 		<button>입력</button>
 	</form>
 	<br><br>


</body>
</html>