<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="pojos.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Login Successful!!!!!</h4>

<h5>Validated User: ${sessionScope.user_details}</h5>

<h5><a href="logout.jsp">Logout</a></h5>
</body>
</html>