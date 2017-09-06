<%@ tag body-content="scriptless" pageEncoding="UTF-8" description="item 출력 태그" %>

<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>

<jsp:useBean id="product" class="jspbook.ch10.Product" />

<h2><jsp:doBody/></h2>
<table border="${border}" bgcolor="${bgcolor}" width="150">
	<%
		for(String item : product.getProductList()) {
			out.println("<Tr><td>" + item + "</td></tr>");
		}
	%>
</table>