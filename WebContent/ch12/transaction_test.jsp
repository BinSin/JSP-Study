<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean scope="page" id="bb1" class="jspbook.ch12.Bank1Bean" />
<jsp:useBean scope="page" id="bb2" class="jspbook.ch12.Bank2Bean" />
<jsp:useBean scope="page" id="bb3" class="jspbook.ch12.Bank3Bean" />
<jsp:useBean scope="page" id="bb4" class="jspbook.ch12.Bank4Bean" />

<%
try {
	if(request.getMethod().equals("POST")) {
		String fromBank = request.getParameter("fromBank");
		String toBank = request.getParameter("toBank");
		
		if(Integer.parseInt(request.getParameter("bal")) < 0) {
			out.println("<script>alert('0보다 큰 값을 입력하세요')</script>");
			out.println("<script>history.go(-1)</script>");
		}
			
		if(fromBank.equals(toBank))	out.println("<script>alert('다른 bank에 이체하세요.')</script>");
		else {
			if(fromBank.equals("Bank1")) {
				if(bb1.transfer(Integer.parseInt(request.getParameter("bal")), fromBank, toBank))
				out.println("<script>alert('정상처리 되었습니다.')</script>");
				else
				out.println("<script>alert('수용한도를 초과했습니다.')</script>");
			}
			else if(fromBank.equals("Bank2")) {
				if(bb2.transfer(Integer.parseInt(request.getParameter("bal")), fromBank, toBank))
					out.println("<script>alert('정상처리 되었습니다.')</script>");
					else
					out.println("<script>alert('수용한도를 초과했습니다.')</script>");
			}
			else if(fromBank.equals("Bank3")) {
				if(bb3.transfer(Integer.parseInt(request.getParameter("bal")), fromBank, toBank))
					out.println("<script>alert('정상처리 되었습니다.')</script>");
					else
					out.println("<script>alert('수용한도를 초과했습니다.')</script>");
			}
			else if(fromBank.equals("Bank4")) {
				if(bb4.transfer(Integer.parseInt(request.getParameter("bal")), fromBank, toBank))
					out.println("<script>alert('정상처리 되었습니다.')</script>");
					else
					out.println("<script>alert('수용한도를 초과했습니다.')</script>");
			}
		}
	}
} catch(Exception e) {
		out.println("<script>alert('금액을 입력하세요.')</script>");
}

	bb1.getData();
	bb2.getData();
	bb3.getData();
	bb4.getData();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch12: 트랜잭션 테스트</title>
</head>
<body>
<div align="center">
<h3>계좌현황</h3>
<hr>

<table border=1 cellpadding=5 cellspacing=0>
<tr>
	<td>Bank1</td>
	<td>이름 : <%=bb1.getAname() %></td>
	<td>잔액 : <%=bb1.getBalance() %></td>
</tr>
<tr>
	<td>Bank2</td>
	<td>이름 : <%=bb2.getAname() %></td>
	<td>잔액 : <%=bb2.getBalance() %></td>
</tr>
<tr>
	<td>Bank3</td>
	<td>이름 : <%=bb3.getAname() %></td>
	<td>잔액 : <%=bb3.getBalance() %></td>
</tr>
<tr>
	<td>Bank4</td>
	<td>이름 : <%=bb4.getAname() %></td>
	<td>잔액 : <%=bb4.getBalance() %></td>
</tr>

</table>
<hr>

<form name="form1" method=POST>
이체금액 : <input type="text" name="bal" width=200 size="5">
 from
<select name="fromBank">
	<option selected>Bank1</option>
	<option>Bank2</option>
	<option>Bank3</option>
	<option>Bank4</option>
</select>
 to
 <select name="toBank">
	<option>Bank1</option>
	<option selected>Bank2</option>
	<option>Bank3</option>
	<option>Bank4</option>
</select>
<input type="submit" value="이체실행" name="B1"><input type="reset" value="다시입력" name="B2">
</form>
</div>
</body>
</html>