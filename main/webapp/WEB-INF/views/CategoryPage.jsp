<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<%@include file="adminhead.jsp" %></head>
</head>
<body>
<style>
body
{
background-color:#ffffff;
}
</style>




<section id="footer">
<div class="inner">
<center>
<form:form action="saveCategory" commandName="category" method="post">
					<br> <br>
					<label><b>Category Name</b></label>
					<form:input type="text" path="catname" />
					<br> <br>
					<label><b>Category description</b></label>
					<form:input type="text" path="catdesc" />
					
					<br> <br><input type="submit" value="Submit" />
					<br>
					
					
			</form:form>
</center>
</div>
</section>





<table style="width:100%" border="1">
            <tr>
                <th>Category id</th>
                <th>Category name</th>
                <th>Category prize</th>
                <th>delete</th>
                <th>Edit</th>
            </tr>

            <c:forEach items="${catlist}" var="category">
                <tr>
                    <td>${category.catid}</td>
                    <td>${category.catname}</td>
                    <td>${category.catdesc}</td>
                    <td><a href="catdelete?cid=${category.catid}">delete</a></td>
                    <td><a href="catedit?cid=${category.catid}">Edit</a></td> 
				</tr>
			</c:forEach>
</table>		
</body>
</html>