<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="pojos.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h4>From Page 2: <% request.getParameter("fname"); %></h4>

<%
Student s1 = (Student)request.getAttribute("student_details");

if(s1!=null)
{
	out.print("<h4> Hello " + s1.getFirstName() + " " + s1.getLastName() + "</h4>");
	
	if(s1.isAdmissionStatus())
		out.print("<h3>Congratulations!!! You are admitted to "+s1.getSelectedCourse()+"....</h3>");
	
	else
		out.print("<h3>Sorry... can't be admitted to "+s1.getSelectedCourse()+"... Admissions Are FULL!!!</h3>");
		out.print("<h3><a href='admission_form.html'>Go To Admission Page</a></h3>");

}

%>

</body>
</html>