package jspbook.ch04;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class CalcServlet2
 */
@WebServlet(description = "Calc2 서블릿", urlPatterns = { "/CalcServlet2" })
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		double num1, num2;
		double result;
		String op;
		
		
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = res.getWriter(); 
		
		
		num1 = Double.parseDouble(req.getParameter("num1"));
		num2 = Double.parseDouble(req.getParameter("num2"));
		op = req.getParameter("operator");
		
		
		Calc calc = new Calc(num1, num2, op);
		result = calc.getResult();
		
		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>");
		out.println("<HR>");
		out.println(num1 + " " + op + " " + num2 + " = " + result);
		out.println("</BODY></HTML>");
		
	}

}
