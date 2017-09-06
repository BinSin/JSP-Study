<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.sql.*, java.sql.*, javax.naming.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	Connection conn= null;
	PreparedStatement pstmt = null;
	
	try{
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/mysql");
		
		conn = ds.getConnection();
		
		if(request.getParameter("username") != null) {
			String sql = "insert into jdbc_test values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,request.getParameter("username"));
			pstmt.setString(2,request.getParameter("email"));
			pstmt.setInt(3,Integer.parseInt(request.getParameter("age")));
			pstmt.executeUpdate();
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC 테스트</title>
</head>
<body>
<div align=center>
<h2>이벤트 등록</h2>
<hr>

<form name=form1 method=post action=jdbctest_dbcp.jsp>
등록이름 : <input type=text name=username>
email주소 : <input type=text name=email size=20>
나이 : <input type=text name=age size=5>
<input type=submit value="등록">
</form>
<hr>
</div>

#등록 목록<p>
<%
	try{
		String sql = "select username, email, age from jdbc_test";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int i=1;
		
		while(rs.next()) {
			out.println(i+" : "+rs.getString(1)+" ,"+rs.getString("email")+" ,"+rs.getInt("age")+"<br>");
			i++;
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>

</body>
</html>