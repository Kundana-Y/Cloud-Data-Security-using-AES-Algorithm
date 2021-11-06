<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,databaseconnection.*" %>
<%
	String email=(String)session.getAttribute("email");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>cyber crime</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css' />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div id="head1" style="font-family:'Oswald', sans-serif;font-size: 45px;text-transform: uppercase;	font-weight:bold;color:white;text-align: center;">cloud data security using AES algorithm</div>
<div id="header">
	
	<div id="menu">
		<ul>
			<li><a href="owner_home.jsp">File Search </a></li>
			<li><a href="keyres.jsp">Key Response</a></li>
			<li class="current_page_item"><a href="decryption.jsp" accesskey="2" title="">Decryption</a></li>
			<li><a href="user.jsp" accesskey="3" title="">Logout</a></li>		
		</ul>		
	</div>
</div>
<div id="banner-wrapper">
	<div id="banner" style="border:5px solid black;"><img src="images/SecurePublicCloudICon.png" width="1000" height="245" alt="" /></div>
</div>
<div id="page-wrapper">
</div>
<div id="footer-wrapper">
	<div id="footer-content">
		<h2 style="font-family:'Oswald', sans-serif;font-size: 35px;text-transform: uppercase;	font-weight:bold;color:black;text-align: center;">FILE DECRYPTION</h2>
		<div id="fbox1" style="border:5px solid black;margin-top:50px;margin-left:10px;border-radius:10px;">
			<p><img src="images/upload1.png" width="250" height="250" alt="" style="margin-left:30px;margin-top:30px;"/></p>
			
		</div>
		<div style="margin-left: 150px; margin-top: 100px;">
		<form name="s" action="decryptdb.jsp" method="post" enctype="multipart/form-data">  
		<font size="4" color="black"><b>File Key:</b></font>
		<input type="text" name="fkey" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"><br></br>
		<font size="4" color="black"><b>Select File:</b></font>
		<input type="file" name="file" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"><br></br>
		<input type="submit" value="Decrypt" style="margin-left:50px;background-color:black;color:white;font-size:20px;margin-top:20px;">
	    
		</form>
		</div>
		
	</div>
</div>
<div id="footer">
</div>
</body>
</html>
