<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 연습 페이지에요.</title>
</head>
<body>
	<%
	
	
	%>
	<h1>오전 09시 15분</h1>
	<h1>JSP 시작</h1>
	HTML : 웹사이트 제작 가능 , 디자인 / 이벤트 부족함. 못생기고, 정적인 이벤트만 가능.
	HTML로 뼈대를 만들고
	CSS로 디자인을 하고
	JavaScripit로 이벤트 처리를 함. > 파라미터 읽기, 계산, 조건, 반복문 등? > 프로그래밍 언어쪽 기능이 부재함.
	대안은 Servlet. 클라이언트가 요청 > HTML + CSS + JavaScript를 만들어서 응답함.
	But 어렵고, 작업이 불편함.
	JSP(Java Servlet/Server Page)
		작업 형태 : HTML + CSS + JavaScript에 필요한 부분마다 Java코드를 살짝 추가.
		실제 형태 : Tomcat이 Java코드를 Servlet으로 바꿔서 실행해 줌.
		
		Servlet : 자바 코드 내에서 HTML 구현
		JSP : HTML 내에서 자바 코드를 추가!
	<!-- 주석 가능. -->
	<%-- JSP용 주석임. 
		1. 스크립트릿(Scriptlet)
			JSP에서 Java 코드를 실행할 때 사용하는 블록
			<% Java코드가 여기에 실행 됨. %>
		2. 지시자
			특별한 지시를 내릴 수 있도록 하는 블록
			<%@ page / include / taglib / ... %>
		3. 표현식
			어떤 값을 (웹페이지에) 출력 결과로 포함시키고 싶을 때 사용하는 블록
			<%= value %>
			숫자 , 문자열 , 변수 등의 값을 사용 가능.
			Servlet의 out.print() 와 비슷한 기능?
		4. 선언문
			표현식에서 사용할 수 있는 Java의 Method를 작성할 때 사용하는 블록!
			<%! 멤버변수, method %>
			Java의 Method와 동일.(이름 규칙 등도 동일함.)
		
	--%>
	
</body>
</html>