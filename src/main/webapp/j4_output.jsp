<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>j4_output</title>
<script type="text/javascript">
	function getRandomColor() {

		let r = Math.round(Math.random() * 255);
		let g = Math.round(Math.random() * 255);
		let b = Math.round(Math.random() * 255);

		return "rgb(" + r + "," + g + "," + b + ")";
	}

	function init() {
		// html5 : canvas / IS : Quarts2D / android : CanvasView
		let cv = document.getElementById("cv");
		let pen = cv.getContext("2d");

		let x = null;
		let y = null;

		setInterval(function() {
			pen.save(); // 현재 pen 상태 저장
			pen.fillStyle = "rgba(0,0,0,0.2)"; // a = 투명도(0~1 사이)
			pen.fillRect(0, 0, 500, 500); // x좌표,y좌표,가로,세로

			// 그림자 x,y 값을 0으로 = 그림자 없이.
			pen.shadowOffsetX = 0;
			pen.shadowOffsetY = 0;
			pen.shadowBlur = 5; // 그림자 번짐 정도
			pen.shadowColor = "white";

			x = Math.random() * 500;
			y = Math.random() * 500;
			pen.fillStyle = getRandomColor();
			pen.fillRect(x, y, 20, 20);

			pen.restore();

		}, 200);

	}
</script>
</head>
<!-- onload : 문서에 포함되어 있는 모든 컨텐츠(html, image, css , javascript) 같은 것들이 모두 로드된 이후 발생하는 이벤트다. -->
<body onload="init();">
	<%-- 예전 방식 : GET/POST
	요청 파라미터 > 한글 처리
	GET 방식 > 안함
	POST 방식 > 해야함
	
	원래 ) 응답 한글처리(필요했음.)
	EX) jsp 파일 기준 1,2,6번에서 해주고 있어서 필요 없음. (하단의 Encoding문.)
	//	request.setCharacterEncoding("UTF-8");
	 --%>
	<%
	response.sendRedirect("test.jsp");
	
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	int x = Integer.parseInt(request.getParameter("x"));
	int y = Integer.parseInt(request.getParameter("y"));

	String sum1 = request.getParameter("number");
	String token[] = sum1.split(",");
	StringTokenizer st = new StringTokenizer(sum1, ",", false);
	%>

	<table align="center"
		style="margin-top: 200px; text-align: center; font-size: 25px;"
		border="1">
		<tr>
			<td colspan="2">안녕!</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>x</td>
			<td><%=x%></td>
		</tr>
		<tr>
			<td>y</td>
			<td><%=y%></td>
		</tr>
		<tr>
			<td>x+y</td>
			<td><%=x + y%></td>
		</tr>

	</table>

	<table align="center"
		style="margin-top: 50px; text-align: center; font-size: 25px;"
		border="1">
		<tr>
			<%
			int sum = 0;
			for (int i = 0; i < token.length; i++) {
				try{
					sum = sum +	Integer.parseInt(token[i]);
				}catch(Exception e){
					
				}
			%>
			<td>나눠진 숫자(split) : <%=token[i]%>
			</td>

			<%
			}
			%>
			<td>숫자의 합 : <%= sum %>
			</td>
		</tr>
	</table>
	
		<table align="center"
		style="margin-top: 50px; text-align: center; font-size: 25px;"
		border="1">
		<tr>
			<%
			int sum2=0;
			String st2="";
			while(st.hasMoreTokens()){
				try{
					st2 = st.nextToken();
					sum2 = sum2 + Integer.parseInt(st2);
				}catch(Exception e){
					
				}
			%>
			<td>나눠진 숫자(StringTokenizer) : <%=st2%>
			</td>

			<%
			}
			%>
			<td>숫자의 합 : <%= sum2 %></td>
		</tr>
	</table>
	<canvas id="cv" width="500px" height="500px">
	
	</canvas>
</body>
</html>