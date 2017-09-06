<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selProduct.jsp</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");

	session.setAttribute("username", request.getParameter("username"));
%>
<body>
<center>
	<h2>상품 선택</h2>
	<hr>
	<%=session.getAttribute("username") %>님이 로그인한 상태입니다.
	<hr>
	<form name="form1" method="POST" action="add.jsp">
		<select name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</select>
		<input type="submit" value="추가"/>
	</form>

<br>
<br>
<table width="300" border="0" cellspacing="0" cellpadding="0">

	<form name="form1" method="POST" action="checkOut.jsp">
		<tr align="center">
			<td >야구공</td>
			<td>1000원</td>
			<td><input name="product" type="checkbox" value="야구공"></td>
		</tr>
		<tr align="center">
			<td>축구공 </td>
			<td>5000원</td>
			<td><input name="product" type="checkbox" value="축구공"></td>
		</tr>
		<tr align="center">
			<td>배구공</td>
			<td>3000원</td>
			<td><input name="product" type="checkbox" value="배구공"></td>
		</tr>
		<tr align="center">
			<td>농구공</td>
			<td>2000원</td>
			<td><input name="product" type="checkbox" value="농구공"></td>
		</tr>

		<tr><td height="10"></td></tr>
		<tr><td height="10"></td></tr>
		
		<tr>
			<td> 할인 가격 </td>
			<td align="center" colspan="5"> <input type="text" name="sale" /> </td>
			<td align="center" colspan="5">	<input type="submit" value="계산"/></td>
		</tr>
		<tr><td height="10"></td></tr>
		
	</form>
	
</table>
</center>

</body>
</html>