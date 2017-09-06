<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="jspbook.addrbook.*" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="ab" class="jspbook.addrbook.AddrBean"/> 
<jsp:useBean id="member" class="jspbook.addrbook.Member"/>

<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	if (ab.pwdCheck(id, pwd)) {
		session.setMaxInactiveInterval(1 * 60);
		session.setAttribute("loginList", id);
%>
		<script>
			alert("로그인 되었습니다.");
			location.href = "index.jsp";
		</script>
<%
	} else {
%>
		<script>
			alert("아이디 혹은 비밀번호가 틀렸습니다.");
			location.href = "addrbook_login.html";
		</script>
<%

	}
%>