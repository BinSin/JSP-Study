package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet3
 */
@WebServlet("/CalcServlet3")
public class CalcServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num1, num2;
		int result=0;	
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter(); 
		
		num1 = Integer.parseInt(request.getParameter("num1"));	
		num2 = Integer.parseInt(request.getParameter("num2"));	
		
		for(int i=num1;i<=num2;i++)
			result+=i;
			
		out.println("<HTML>");
		out.println("<HEAD><TITLE>헤헤</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(result);
		out.println("</BODY></HTML>");
		
	}


}
