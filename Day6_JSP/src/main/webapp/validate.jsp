<%@page import="java.util.HashMap"%>
<%@page import="pojos.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validation Page</title>
</head>
<%!
//Jsp declaration block to add variable n method(implict scope: private)

HashMap<String,User>userMap;

//override jspInit
public void jspInit(){
	System.out.println("in init(): "+Thread.currentThread());
	//create n populate map
	userMap=new HashMap<>();
	userMap.put("Rama Vaidya",new User("Rama Vaidya","1234",30));
	userMap.put("Mihir rao",new User("Mihir rao","2234",34));
	userMap.put("Ram aidya",new User("Ram aidya","234",36));
}
%>
<body>

<%
System.out.print("in scriptlet: "+Thread.currentThread());
//Read request parameter

String uname = request.getParameter("em");
String pass = request.getParameter("pass");

//HM based validation
//String passward=userMap.get(uname).getPass();

User user = userMap.get(uname);

if(user!=null)
{
	if(user.getPass().equals(pass))
	{
		//Login successfull
		//Store user details including age
		session.setAttribute("user_details", user);
		
		//redirect
		response.sendRedirect("details.jsp");
		
	}
	else
	{
		//invalid link
		out.print("<h4>Invalid Passward.....<a href='login.jsp'>Retry</a></h4>");
	}
}
else
{
	out.print("<h4>New User!!!! Do you want to register? <a href='register.jsp'>Register</a></h4>");
}

%>
</body>

<%!  
public void jspDestroy()
{
	System.out.println("in destroy(): "+Thread.currentThread());
}
%>
</html>