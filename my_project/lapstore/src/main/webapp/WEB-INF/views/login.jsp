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
color:black;
text-align:center;
}

</style>
</head>
<body>
<c:url value="/j_spring_security_check" var="log"></c:url>
<form action="${log}" method="post">
<br><br><br>
<h2>Login Form</h2>
<table align="center">
<tr>
<td><h3>Enter username</h3></td><td><input class="form-control" type="text" name="j_username"></td></tr>
<tr>
<td><h3>Enter password</h3></td><td><input class="form-control" type="password" name="j_password"></td></tr><br><br><br>
<tr><td><h4><input type="submit" value="Login"></h4></td></tr>
<tr><td><span style="color:red">${error }</span></td></tr>

</table>

</form>
<br><br><br><br><br><br><br><br><br><br>
</body>
<%@ include file="footer.jsp" %>
</html>