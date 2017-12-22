<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- css image background -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<style>
.navbar-custom{
background-color:#000000;
font-family:Times New Roman;
color:white;
}

</style>

</head>
<body>

  <div class="container">  
  <nav class="navbar navbar-inverse navbar-custom"> 
  <ul class="nav navbar-nav">
 <c:url value="/resources/images/header/p9.jpg" var="img"></c:url>
  <li><img src="${img }" class="img-circle"></li>
  </ul>
  <ul class="nav navbar-nav navbar-center">
  
  <li><h3>LapStore....Let the search begin....</h3></li>
  </ul>
  </nav></div>
  <div class="container-fluid">
  <nav class="navbar navbar-inverse navbar-static-top">
  <div class="navbar-header">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=.navHeaderCollapse>
      <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
 <a class="navbar-brand">LapStore</a>
    </div>
     <div class="collapse navbar-collapse navHeaderCollapse">
    <ul class="nav navbar-nav navbar-left">
 <li class="active"><a href="home">Home</a></li>
      <li><a href="aboutus">About us</a></li>
      <li><a href="contactus">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li class=dropdown">
    <a  href="" class="dropdown-toggle" data-toggle="dropdown"> 
    Select by Category<b class="caret"></b></a>
    <ul class="dropdown-menu">
    <li>
    <c:forEach items="${categories }" var="c">
    <c:url value="/all/product/searchbycategory?searchCondition=${c.categoryName }" var="catname"></c:url>
   <a href="${catname }">${c.categoryName }</a> </c:forEach>
   <c:url value="/all/product/searchbycategory?searchCondition=All" var="search"></c:url>
   <a href="${search }">All</a></li></ul></li>
       <li><c:if test="${pageContext.request.userPrincipal.name!=null }">
      <a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
       </c:if></li>			
       <li><security:authorize access="hasRole('ROLE_USER')">
      <li><a href="<c:url value="/cart/getcart"></c:url>">Cart</a></li>
           </security:authorize></li>
 
      <c:if test="${pageContext.request.userPrincipal.name==null }">
      <c:url value="/login" var="signin">
      </c:url>
       <li><a href="${signin }">Login</a></li>
       <c:url value="/all/registrationform" var="regurl"></c:url>
      <li><a href="${regurl }">Register</a></li>
       </c:if>
       
      <c:url value="/admin/getproductform" var="geturl"/>
        <li>
        <c:if test="${pageContext.request.userPrincipal.name!=null }">
        <security:authorize access="hasRole('ROLE_ADMIN')">
        <a href="${geturl }">Add Product</a>
        </security:authorize></c:if></li>
      <c:url value="/all/product/getallproducts" var="allurl"/>
			<li><a href="${allurl }">Browse All Products</a></li>
			<c:url value="/j_spring_security_logout" var="logout"></c:url>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<li><a href="${logout }">Logout</a></li></c:if>
			</ul>
          
         
     </div>

</nav>
</div>
     
     
</body>
</html>