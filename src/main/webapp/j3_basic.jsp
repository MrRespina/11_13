<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table align="center" style="margin-top: 200px;font-size: 30px" border="1">
	<tr><td colspan = 10 align="center">구구단</td></tr>
	<%
		for(int i = 2; i<10;i++){					
	%>
	<tr><td><%= i %>단</td><% for (int j = 1; j<10;j++){ %>
		
		<td> <%= i %> * <%= j %> = <%= i*j %>&nbsp;&nbsp;</td>
		<% } %>
		</tr>
	<% } %>
	
	</table>

</body>
</html>