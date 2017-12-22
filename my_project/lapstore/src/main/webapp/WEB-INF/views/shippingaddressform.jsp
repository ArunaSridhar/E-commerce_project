<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('https://ih0.redbubble.net/image.72671857.9110/flat,800x800,070,f.u3.jpg');
}

h2{

text-align:center;
}

</style>
</head>
<body>
<c:url value="/cart/order/${cartid }" var="url"></c:url>
<form:form action="${url }" modelAttribute="shippingAddress">
<form:hidden path="id"/>
<table align="center">
<h2>Shipping Address</h2>
<tr>
<td><h3>Enter Street name</h3></td>
<td><form:input class="form-control" path="streetname" pattern="[A-Za-z\s]{3,}" title="Should be valid"/>
<form:errors path="streetname" style="color:red"></form:errors></td>
</tr>
<tr>
<td><h3>Enter Apartment number</h3></td>
<td><form:input class="form-control" path="apartmentnumber" pattern="[A-Za-z0-9,/-\s]{2,}" title="Should be valid"/>
<form:errors path="apartmentnumber" style="color:red"></form:errors></td>
</tr>
<tr>
<td><h3>Enter City</h3></td>
<td><form:input class="form-control" path="city" pattern="[A-Za-z]{3,}" title="Should be valid "/>
<form:errors path="city" style="color:red"></form:errors></td>
</tr>
<tr>
<td><h3>Enter State</h3></td>
<td><form:input class="form-control" path="state" pattern="[A-Za-z\s]{3,}" title="Should be valid"/>
<form:errors path="state" style="color:red"></form:errors></td>
</tr>
<tr>
<td><h3>Enter Country</h3></td>
<td><form:input class="form-control" path="country" pattern="[A-Za-z]{3,}" title="Should be valid"/>
<form:errors path="country" style="color:red"></form:errors></td>
</tr>
<tr>
<td><h3>Enter Zipcode</h3></td>
<td><form:input class="form-control" path="zipcode" pattern="[0-9]{6}" title="Six digit zip code"/>
<form:errors path="zipcode" style="color:red"></form:errors></td>
</tr>
<br><br><br>
<tr><td>
<h3><input type="submit" value="Next"></input></h3></td></tr>

</table>
</form:form>



</body>
<br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</html>