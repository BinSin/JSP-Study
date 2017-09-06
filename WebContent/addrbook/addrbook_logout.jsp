<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<% request.setCharacterEncoding("utf-8"); %>

	<script>
		alert("로그아웃 하였습니다.");
	</script>
	
<%
	session.invalidate();
%>

	<script>
		location.replace = "addrbook_login.html";
	</script>