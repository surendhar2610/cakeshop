<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br>
<table cellspacing="3" align="center" >
<tr>
<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr>
<tr bgcolor="#FDFEFE">
<td><b>Product Name</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b>Quantity</b>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b>SubTotal</b>&nbsp;&nbsp;&nbsp;</td>
<td><b>Image</b></td>
</tr>
<tr>

<c:forEach items="${cartitems}" var="cartitem">
<tr>
<td>${cartitem.name}</td>

<td><input type="text" value="${cartitem.quantity }" name="quantity" required/></td>
<td>${cartitem.prize * cartitem.quantity }</td>
<td><img src="<c:url value='/resources/${cartitem.id}.jpg'/>" width="100" height="100">
</tr>
</c:forEach>
<tr>
<td colspan="3">Grand Total</td>
<td>${grandtotal }</td>
</tr>
</table>



<table cellspacing="3" cellpadding="10" align="center" border="5">
<tr bgcolor="#FDFEFE">
<td colspan="2"><center><strong><h3><b>Payment Information</b></h3></strong></center></td>
</tr>

<tr>
<td><h4><b>Payment Mode</b></h4></td>
<td>

<input type="radio" name="pmode" value="CD" /><b>Cash On Delivery Only Accepted</b>
</td>

<tr bgcolor="black">
<td colspan="2"><center><a href="OrderConfirm"><input type="submit" value="pay" /></center></td>



</table>

</body>
</html>
<%@include file="CommonFooter.jsp" %>