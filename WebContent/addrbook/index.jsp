<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" import="jspbook.addrbook.*" import="java.util.*"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="ab" class="jspbook.addrbook.AddrBean"/> 

<%
	String str;
	str = (String)session.getAttribute("loginList");
	
	if(str != null) {
%>
	<script>
			location.href = "addrbook_list.jsp";
	</script>
<%
	}
	else {
%>

	<script>
			alert("로그인 하세요.");
			location.href = "addrbook_login.html";
	</script>
<%
	}
%>