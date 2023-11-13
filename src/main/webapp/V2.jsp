<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>V2.jsp</title>
<script type="text/javascript">

function bmiResult(double value){
	
	String result = "저체중";
	
	if(value>40){
		result = "비만";
	}else if(value>=35){
		
	}else if(value>=30){
		
	}else if(value>=25){
		
	}else if(value>=18){
		result = "정상";
	}
	
}

</script>

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		double weight = Double.parseDouble(request.getParameter("weight"));
		double height = Double.parseDouble(request.getParameter("height"));

		double bmi = (double) request.getAttribute("res");
		
		
	%>
	
	<h1>BMI</h1>
	키 : <%=height%><br>
	몸무게 : <%=weight%><br>
	bmi : <%=bmi %><br>
	판정 : bmiResult(<%=bmi %>);
</body>
</html>