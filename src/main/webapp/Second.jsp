<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	`<%--
		페이지 이동
			first > Second : 사용자가 뭔가 액션을 취해서 수동으로 넘어감.
							> Request(요청)
			Second > Third : 그냥 넘어감.
							> Redirect : 단순 자동이동(점검중, 공사중)
							 response.sendRedirect("Third.jsp");
							 
							> forward : 자동이동(값이 전달되는)
							RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
							rd.forward(request, response);
							
							> include : 포함(Second 속에 Third가 포함되는)
							위치조절이 불가능(Third가 무조건 상단으로) - 별로임.
							조만간 위치 조절이 되는 include를 할 것?
							RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");	
							rd.include(request,response);
							
		값
			parameter
				html에서 만들어낸 값(a,b)
				request에 저장 됨. String or String[] 으로 표현 가능.
				
			attribute
				java에서 만들어낸 값(c)
				request에 저장 됨. Object(객체)임
							 
	 --%>
	<%
		request.setCharacterEncoding("UTF-8");
	
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		
		// RequestDispatcher : Client로부터 들어온 요청(request)를 원하는 쪽으로(요청을) 넘기는 기능
		// 호출된 페이지에서는 request.setAttribute(key,value) 메소드를 통해서
		// 넘겨받은 데이터 처리가 가능해짐.
		//	> Redirect와는 다르게 request와 response 객체를 가지고 넘어가기 때문에 값을 넘길 수 있음.
		RequestDispatcher rd = request.getRequestDispatcher("Third.jsp");
		
		int c  = a + b ;
		request.setAttribute("c",c); // "c" 자리에 지금 만든 c값을 넣음
		
		String d = "zz";
		request.setAttribute("d",d);
		
		Random e = new Random();
		request.setAttribute("e",e);
		
		//rd.forward(request, response);
		rd.include(request,response);
	
	%>
	
	
	
	
	<h1>form 형식</h1>
	a : <%= a %><br>
	b : <%= b %><br>
	<br><br>
	
</body>
</html>