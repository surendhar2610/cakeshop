<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch tools</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
.navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .font
  {
  fontsize:40px;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  
    
</style>
<body>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">WATCHES</a>   
    </div>	
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
