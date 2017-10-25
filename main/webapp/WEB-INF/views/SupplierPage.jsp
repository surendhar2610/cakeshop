<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<%@include file="adminhead.jsp" %></head>
</head>
<body>
<style>
body
{
backgroud-color:#ffffff;
}
</style>



<section id="footer">
<div class="inner">
<center>
<form:form action="SaveSupplier" commandName="supplier" method="post">
					<br> <br>
					<label><b>Supplier Name</b></label>
					<form:input type="text" path="suppliername" />
					<br> <br>
					<label><b>Supplier Address</b></label>
					<form:input type="text" path="supplieraddress" />
					
					<br> <br><input type="submit" value="Submit" />
					<br>
					
					
			</form:form>
</center>
</div>
</section>

<table style="width:100%" border="1">
            <tr>
                <th>Supplier id</th>
                <th>Supplier name</th>
                <th>Supplier Address</th>
                <th>delete</th>
                <th>Edit</th>
            </tr>

            <c:forEach items="${suplist}" var="supplier">
                <tr>
                    <td>${supplier.supplierid}</td>
                    <td>${supplier.suppliername}</td>
                    <td>${supplier.supplieraddress}</td>
                    <td><a href="supdelete?sid=${supplier.supplierid}">delete</a></td>
                    <td><a href="supedit?sid=${supplier.supplierid}">Edit</a></td>
                     </tr>
			</c:forEach>
</table>		

</body>
</html>