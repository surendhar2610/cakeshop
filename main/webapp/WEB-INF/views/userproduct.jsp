<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <%@ include file="Header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<center><title>World of cakes</title>
</center>

</head>
<body>
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
<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-left">
        <li><a href="#home">HOME</a></li>
        <li><a href="#contact">CONTACT US</a></li>
		<li><a href="#about us">ABOUT US</a></li>
		<li><a href="Userproduct">PRODUCT</a></li>
		
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<li class=dropdown">
    <a  href="" class="dropdown-toggle" data-toggle="dropdown"> 
    Select by Category<b class="caret"></b></a>
    <ul class="dropdown-menu">
    <li>
    <c:forEach items="${catlist }" var="c">
    <c:url value="/product/searchbycategory?searchCondition=${c.catname }" var="catName"></c:url>
   <a href="${catName }">${c.catname }</a> </c:forEach>
   <c:url value="/product/searchbycategory?searchCondition=All" var="search"></c:url>
   <a href="${search }">All</a></li></ul></li>
		
		<li><a href="perform_logout">LOGOUT</a></li>
		<li><a href="addcart"><div class="font"></div><span class="glyphicon glyphicon-shopping-cart">AddCart</div></span></a></li>
		</ul>
		</div>
		</div>
	</nav><br><br>

<center><h1>World of cakes</h1></center>
        
        <div class="container">
        <c:forEach items="${prolist}" var="product">
                    <div class="column">
                            <div class="col-sm-6 col-md-3"><a href="productdesc/${product.id }" class="thumbnail">
		<img src="<c:url value="/resources/${product.id }.jpg"/>" style="height:200px; width:60%" alt="Error on loading images"/></a>
		<div class="caption">
		<h4>PRODUCT NAME:${product.name}</h4>
		<p>Rs.${product.prize}</p>
			</div>
                            </div> </div>  </c:forEach>
                          <br>
             
      
                           
            
        </div>
   <footer class="text-center">
<%@ include file="CommonFooter.jsp" %>
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

        
</body>
</html>