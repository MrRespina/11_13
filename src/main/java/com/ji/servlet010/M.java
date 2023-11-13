package com.ji.servlet010;

import javax.servlet.http.HttpServletRequest;

public class M {
	
	public static void calcBmi(HttpServletRequest request){
		
		Double w = Double.parseDouble(request.getParameter("weight"));
		Double h = Double.parseDouble(request.getParameter("height"));
		h = h/100;
		
		Double result = w / (h * h);			
		
		request.setAttribute("res", result);
		
	}

}
