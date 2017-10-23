<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<br>

<center><h2>product details</h2></center>
<div class="row">
<div class="col-sm-5">
<c:url value="/resources/${product.id }.jpg" var="imageurl"></c:url>
<img src="${imageurl }" height="350" width="450">
</div>
<div class="col-sm-7">
<tr>
<td>
<h4>Product name:</h4></td><td>${product.name }</td>
</tr>
<tr>
<td><h4>price:</h4></td><td>Rs.${product.prize }</td></tr>
<tr>
<td><h4>Description:</h4></td><td>${product.description }</td></tr>
<tr>
<td><h4>Quantity:</h4></td><td>${product.quantity }</td></tr>

</table>
<c:if  test="${product.quantity==0 }">
Out Of Stock
</c:if>

<c:if test="${product.quantity!=0 }">
<c:url value="/addcart/${product.id }" var="load"></c:url>
<form action="${load}">
<br><br>

<h4>Enter Units<input  type="text" name="units"></h4><br>
<br>

<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span  class="glyphicon glyphicon-shopping-cart"></span></button>
<br><br>

</form>
</c:if>
</div>
</div>
</body>
</html>
<%@ include file="CommonFooter.jsp" %>