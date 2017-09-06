<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>

<%
	// 데이터베이스 연결관련 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	// 데이터베이스 연결관련 정보를 문자열로 선언
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/jspbook";
	
	try{
		// JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		
		// 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
		conn = DriverManager.getConnection(jdbc_url,"root","gldjfh192");
		
		// Connection 클래스의 인스턴스로 부터 SQL문 작성을 위한 Statement 준비
		String sql = "insert into jdbc_test values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("username"));
		pstmt.setString(2,request.getParameter("email"));
		pstmt.setInt(3,Integer.parseInt(request.getParameter("age")));
		
		// username 값을 입력한 경우 SQL문을 수행
		if(request.getParameter("username") != null) {
			pstmt.executeUpdate();
		}
	}
	catch(Exception e) {
		System.out.println(e);
	}

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> JDBC 테스트 </title>
</head>
<body>
<center>
<h2>이벤트 등록</h2>
<hr>

<form name=form1 method=post>
등록이름 : <input type=text name=username>
주소 : <input type=text name=email size=20>
나이 : <input type=text name=age>
<input type=submit value="등록">
</form>
<hr>
</center>
# 등록 목록<p>
</body>
</html>