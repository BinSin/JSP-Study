<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL: Core Library</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:chosse&gt;</h3>
<form>
<select name="sel" >
	<option>-</option>
	<option>a</option>
	<option>b</option>
	<option>c</option>
	<option>d</option>
</select>
<input type=submit value="선택">
</form>
<hr>
<c:choose>
	<c:when test="${param.sel == 'a'}" >
		a를 선택
	</c:when>
	<c:when test="${param.sel == 'b'}" >
		b를 선택
	</c:when>
	<c:when test="${param.sel == 'c'}" >
		c를 선택
	</c:when>
	<c:otherwise>
		a,b,c 외의 것을 선택
	</c:otherwise>
</c:choose>
</body>
</html>