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
		Class.forName(jdbc_driver);
		
		conn = DriverManager.getConnection(jdbc_url,"root","gldjfh192");
		
		String sql = "insert into member values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("id"));
		pstmt.setString(2,request.getParameter("pwd"));
		pstmt.setString(3,request.getParameter("name"));
		
		if(request.getParameter("id") != null) {
			pstmt.executeUpdate();
%>

<script>
	alert("가입 되셨습니다.");
	document.location.href = "addrbook_login.html";
</script>

<%
		}
		
	}
	catch(Exception e) {
		System.out.println(e);
	}

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen" />
<center>
<h2>회원가입</h2>
<hr>
<form name=form1 method=post>
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input type=text name=id>
	</td>
	<tr>
		<td>비밀번호</td>
		<td><input type=password name=pwd></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type=text name=name></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type=submit value="등록">
			<input type=reset value="취소">
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>