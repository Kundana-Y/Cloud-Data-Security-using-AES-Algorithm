<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,databaseconnection.*" %>
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
<style>
.responstable {
  margin: 1em 0;
  width: 80%;
  overflow: hidden;
  background: #FFF;
  color: #024457;
  border-radius: 10px;
  border: 1px solid #167F92;
   margin-left:120px;
  margin-top:30px;
  margin-bottom:40px;
  
}
.responstable tr {
  border: 1px solid #D9E4E6;
}
.responstable tr:nth-child(odd) {
  background-color: #EAF3F3;
}
.responstable th {
  display: none;
  border: 1px solid #FFF;
  background-color: #167F92;
  color: #FFF;
  padding: 1em;
}
.responstable th:first-child {
  display: table-cell;
  text-align: center;
}
.responstable th:nth-child(2) {
  display: table-cell;
}
.responstable th:nth-child(2) span {
  display: none;
}
.responstable th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .responstable th:nth-child(2) span {
    display: block;
  }
  .responstable th:nth-child(2):after {
    display: none;
  }
}
.responstable td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
  color:black;
  font-weight:bold;
}
.responstable td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid #D9E4E6;
}
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid #D9E4E6;
  }
}
.responstable th, .responstable td {
  text-align: left;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}
h1 {
  font-family: Verdana;
  font-weight: normal;
  color: #024457;
}
h1 span {
  color: #167F92;
}

</style>
</head>
<body>
<div id="head1" style="font-family:'Oswald', sans-serif;font-size: 45px;text-transform: uppercase;	font-weight:bold;color:white;text-align: center;">cloud data security using AES algorithm</div>
<div id="header">
	
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="cloudhome.jsp">Owner Request</a></li>
			<li><a href="chart.jsp">chart</a></li>
			<li><a href="index.html" accesskey="3" >Logout</a></li>
		
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
		<h2 style="font-family:'Oswald', sans-serif;font-size: 35px;text-transform: uppercase;	font-weight:bold;color:black;text-align: center;">KEY REQUEST FROM DATA OWNERS</h2>
		 <table class="responstable">
          <tr> 
            <th>ID</th>
            <th>Email ID</th>
           <th>Message</th>
            <th>Status</th>
            <th>Public Key</th>
          </tr>
          <%
	
	//int fid=0;	
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
try
{
con=Databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select * from request order by id desc";
 rs=st.executeQuery(sqll);
while(rs.next())
{
	
%>
          <tr> 
          
            <td><%=rs.getString("id")%></td>
             <td><%=rs.getString("email")%></td>
             <td><%=rs.getString("message")%></td>
             <td><%=rs.getString("status")%></td>
             <td><a href="send.jsp?id=<%=rs.getString("id")%>">Send</a></td>
          </tr>
          <% 

}


}

catch(Exception e2)
{
out.print(e2);
}

%>
        </table>
		
	</div>
</div>
<div id="footer">
</div>
</body>
</html>
