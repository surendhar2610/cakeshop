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
<div class="span9" style="font-family:Bell MT;color:black;">
	 <c:forEach items="${userlist}" var="user">
                <tr>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.email}</td>
                    <td>${user.address}</td>
                     <td><a href="delete?uid=${user.username}">delete</a></td> 
           			<td><a href="edit?uid=${user.username}">Edit</a></td>
            </tr>
            </c:forEach>
					
					<h2>Thank you for Shopping</h2>
					<h3>Your order has been submitted successfully.</h3>
.
                   <div class="span5">
            
			</div>	
</div>

</body>
</html>