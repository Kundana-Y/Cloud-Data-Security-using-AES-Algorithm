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
<%
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd @ hh:mm:ss";
    SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
	String strDateNew = sdf.format(now) ;

int a=(int) (Math.random() * 1000000);
String cc =Integer.toString(a);

	ResultSet rs1=null;
	int m=0;
	try{
		
		Connection con=Databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(id) from upload";
		rs1=st.executeQuery(sql1);
		while(rs1.next())
		{
		if(rs1.getInt(1)==0)
		m=1;
		else
		m=rs1.getInt(1)+1;
		session.setAttribute("fid",m);
		}
%>
</head>
<body>
<div id="head1" style="font-family:'Oswald', sans-serif;font-size: 45px;text-transform: uppercase;	font-weight:bold;color:white;text-align: center;">cloud data security using AES algorithm</div>
<div id="header">
	
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="user_home.jsp">Key Request</a></li>
			<li><a href="response.jsp" accesskey="2" title="">Key Response</a></li>
			<li><a href="encryption.jsp" accesskey="2" title="">File Encryption</a></li>
			<li><a href="viewkey.jsp" accesskey="2" title="">Encryption Key</a></li>
			<li><a href="upload.jsp" accesskey="2" title="">File Upload</a></li>
			<li><a href="view.jsp" accesskey="2" title="">User Key Request</a></li>
			<li><a href="index.html" accesskey="3" title="">Logout</a></li>
		
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
		<h2 style="font-family:'Oswald', sans-serif;font-size: 35px;text-transform: uppercase;	font-weight:bold;color:black;text-align: center;">KEY REQUEST TO CLOUD MANAGER</h2>
		<div id="fbox1" style="border:5px solid black;margin-top:50px;margin-left:10px;border-radius:10px;">
			<p><img src="images/upload1.png" width="250" height="250" alt="" style="margin-left:30px;margin-top:30px;"/></p>
			
		</div>
		<div id="fbox2" >
		<form name="s" action="keyreq.jsp" method="post">  
		<table width="656" height="350" style="padding-top:20px;margin-left:10px;margin-top:30px;padding-left:130px;">
		<tr><td><font size="4" color="black"><b>EMAIL:</b></font></td> 
		<td><input type="text" name="mail" value="<%=email%>" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>MESSAGE:</b></font></td> 
		<td><textarea rows="4" cols="26" name="msg" style="border-radius:10px;color:black;border:2px solid black;font-size:20px;"></textarea>
		</td></tr>		
		<tr><td><font size="4" color="black"><b>Date</b></font></td> 
		<td><input type="text" name="date" value="<%=strDateNew %>" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
	    </table>
		<input type="submit" value="Send" style="margin-left:250px;background-color:black;color:white;font-size:20px;margin-top:20px;"><br></br>
		
		</form>
		</div>
		
	</div>
</div>
<div id="footer">
</div>
<%
}
catch(Exception e)
{
e.printStackTrace();
} %>
</body>
</html>
