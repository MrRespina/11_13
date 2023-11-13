package com.ji.servlet009;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Controller : Servlet;
//		상황판단해서 M/V 소환
//		> 어떤 요청이 들어왔을 때 상황 판단을 통해 M or V를 소환
//		해당 프로젝트(사이트)의 진입점 (ctri + f11 실행은 이곳.)

// Back-end 개발자 : PL(Project Leader)급이 한다.


@WebServlet("/C")
public class C extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public C() {
        super();
        // TODO Auto-generated constructor stub
    }

    // 어떤 사이트에 접속
    //		주소를 직접 입력
    //		검색 > <a> 통해 접근
    //		둘다 GET 방식 요청.(어떤 사이트에 POST로 첫 접속 ? - x)
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getRequestURI());
		RequestDispatcher rd = request.getRequestDispatcher("V1.html");
		rd.forward(request, response);
		//request.getRequestDispatcher("V1.html").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		M.add(request); // 계산을 먼저 하고 결과를 봐야?
		request.getRequestDispatcher("V2.jsp").forward(request, response);
		
	}

}
