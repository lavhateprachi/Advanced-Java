<%@page import="pojos.Course" import="pojos.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
int score = Integer.parseInt(request.getParameter("score"));
Course course = Course.valueOf(request.getParameter("course").toUpperCase());

Student student = new Student(fname,lname,score,course);
if(score>=course.getMinMarks())
{
	student.setAdmissionStatus(true);
}
request.setAttribute("student_details", student);

RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
rd.include(request, response);

System.out.println("back To Page 1...");
%>
</body>
</html>