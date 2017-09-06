<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>checkOut.jsp</title>
</head>
<body>
<center>
<h2>계산</h2>
선택한 상품 목록
<hr>
<% 
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	int sum=0;
	if(list == null) {
		out.println("선택한 과일이 없습니다." + "<br>");
	}
	else {
		for(Object productname:list) {
			
			if(productname.equals("사과"))
				sum+=1000;
			if(productname.equals("귤"))
				sum+=500;
			if(productname.equals("파인애플"))
				sum+=2000;
			if(productname.equals("자몽"))
				sum+=1500;
			if(productname.equals("레몬"))
				sum+=1000;
			out.println(productname+"<br>");
		}
	}
	session.setMaxInactiveInterval(10);

	request.setCharacterEncoding("UTF-8");
	String productlist[] = request.getParameterValues("product");
	int saleRate=0;
	
	String sale = request.getParameter("sale");
	if (sale.equals(""))
		saleRate = 0;
	else {
		saleRate = Integer.parseInt(sale);
	}
	

	try {

		if(productlist != null) {
			for(String lists : productlist) {
				out.println(lists + "<br>");
				if(lists.equals("야구공")) sum += 1000;
				else if(lists.equals("축구공")) sum += 5000;
				else if(lists.equals("배구공")) sum += 3000;
				else if(lists.equals("농구공")) sum += 2000;
			}
			out.println("가격은 " + (sum - saleRate) +"원 입니다.");
		} else {
			out.println("선택한 공이 없습니다." + "<br>");
		}
	} 
	catch(NullPointerException e) {
		e.printStackTrace();
		out.println("선택한 공이 없습니다." + "<br>");
	}
%>


</center>
</body>
</html>