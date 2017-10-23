<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="adminhead.jsp" %>
</head>
<body>
<section id="footer">
<div class="inner">
<center>
<form:form action="saveProduct" modelAttribute="product" method="post" enctype="multipart/form-data" >
<!-- <tr>
<th>product id</th>
<td>
<form:input type ="hidden" path="id"/></td>
</tr> -->
<tr>
<th>product name</th>
<td><form:input type ="text" path ="name"/></td>
</tr><br>

<tr>
<th>product prize</th>
 <td><form:input type ="text" path ="prize"/></td>
 </tr><br>
 <tr>
<th>quantity</th>
<td><form:input type ="text" path ="quantity"/></td>
</tr><br>
<tr>
<th>description</th>
 <td><form:input type ="text" path ="description"/></td>
 </tr><br>
 <!--  --><th>Category ID</th>
 <td><form:select name="CategoryId" path="CatId">
         <option value="-1" selected>select..</option>
         <c:forEach var="category" items="${catlist}">
         <option value="${category.catid}">${category.catname}</option></c:forEach></form:select>
</td><br><br>

<th>Supplier ID</th>
 <td><form:select path ="SupId">
         <option value="-1">select..</option>
         <c:forEach var="supplier" items="${suplist}">
         <option value="${supplier.supplierid}">${supplier.suppliername}</option></c:forEach>
         </form:select>
</td><br><br>
<tr>  
<td><h3>Upload an image</h3><input type="file" name="pimage"></td></tr> 
<tr>   
    
     <td><input type ="submit" value="Submit" ></td>
        
     </tr>

</form:form>
</center>
</div>
</section>


</center>
<table style="width:100%" border="1">
            <tr>
            	<th>Image</th>
                <th>product id</th>
                <th>product name</th>
                <th>product quantity</th>
                <th>product description</th>
                <th>product prize</th>
            </tr>

            <c:forEach items="${prolist}" var="pro">
            <c:url value="/resources/${pro.id}.jpg" var="imageurl"></c:url>
                <tr>
                	<td><img src="${imageurl}" height="50" width="50"></td>
                    <td>${pro.id}</td>
                    <td>${pro.name}</td>
                    <td>${pro.quantity}</td>
                    <td>${pro.description}</td>
                    <td>${pro.prize}</td>
					<td><a href="deletepro?pid=${pro.id}">Delete</a></td>
					
  				</tr>
  				</c:forEach>
  				
</table>		
</body>
</html>