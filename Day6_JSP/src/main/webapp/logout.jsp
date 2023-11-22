<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h5>Session Id: <%= session.getId()  %> </h5> 
<!-- WC calls session.getAttribute("user_details").getName() send to client -->
<h4>Hello, ${sessionScope.user_details.name}</h4>

<%
session.invalidate();
%>

<h4>You have logged out...Visit Again!!!
<a href="login.jsp">Login</a>
</h4>
</body>
</html>