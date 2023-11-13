package com.ji.servlet009;

import javax.servlet.http.HttpServletRequest;

// Model : 일반적인 Java Class
//		실제 업무(계산,DB,가공,...)

// back-end 개발자


public class M {
	// V1.html > c > 가지고 온 값 계산 + 가공
	public static void add(HttpServletRequest request) {	//요청객체
		// 받아온 값 - parameter
		int x = Integer.parseInt(request.getParameter("x"));
		int y = Integer.parseInt(request.getParameter("y"));
		
		int z = x + y;
		request.setAttribute("zz", z);
		
	}
	
	// 다 만들어지면 > C로 일단 보냄
	

}
