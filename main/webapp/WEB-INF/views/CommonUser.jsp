<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cake world</title>

<body>	
 <c:choose>
<c:when test="${sessionScope.UserLoggedIn != null}">

      <%@include file="Header.jsp" %>
       <%@include file="slider.jsp" %>
        <%@include file="footer.jsp" %>
  
			
	</c:when>
                 
    			<c:otherwise>
    				
        			<li class="sub-menu"><a href="category">Category</a>
		<ul>
			<li><a href="saveCategory">AddCategory</a></li>
    		<li><a href="editcategory">ShowCategory</a></li>                    
    	</ul>
	</li>                
    <li class="sub-menu"><a href="supplier">Supplier</a>
        <ul>
            <li><a href="SaveSupplier">AddSupplier</a></li>
            <li><a href="updatesupplier">ShowSupplier</a></li>                    
        </ul>
     </li>
     <li class="sub-menu"><a href="product">Product</a>
         <ul>
              <li><a href="Product">AddProduct</a></li>
              <li><a href="editproduct">ShowProduct</a></li>                    
         </ul>
     </li>  
     <li class="sub-menu"><a href="admin">User</a></li>
     <li class="sub-menu"><a href="perform_logout">Logout</a></li>
  </c:otherwise>
    		</c:choose>

				<p>${sessionScope.UserLoggedIn}</p>

</body>
</html>
