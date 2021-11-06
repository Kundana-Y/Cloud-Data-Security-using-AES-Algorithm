<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Statement st = null;
ResultSet rs = null;
String name = request.getParameter("name");
System.out.println("name="+name);
String password = request.getParameter("pass");
System.out.println("password="+password);
if((name.equals("cloud"))&(password.equals("cloud")))
{
	response.sendRedirect("cloudhome.jsp");
}else{	
			response.sendRedirect("cloud.jsp");
	}	
%>
</body>
</html>