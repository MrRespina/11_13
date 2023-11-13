<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	border: red solid 3px;
}
</style>
</head>
<body>
	<% int a = Integer.parseInt(request.getParameter("a"));
	
		String bbb = request.getParameter("b"); // String
		Integer bb = Integer.parseInt(bbb);	// String > Integer
		int b = bb.intValue();			// Integer > int
		
		//Attribute 값 읽기
		Object ccc = request.getAttribute("c"); // Object
		Integer cc = (Integer)ccc;				// Object > Integer
		int c = cc.intValue();					// Integer > int
		
		String d = (String) request.getAttribute("d");
		Random e = (Random) request.getAttribute("e");
	%>
	<div>
		<h1>Third</h1>
		a : <%=a%><br>
		b : <%=b%><br>
		c : <%=c%><br>
		d : <%=d%><br>
		e : <%=e%><br>
	</div>

</body>
</html>