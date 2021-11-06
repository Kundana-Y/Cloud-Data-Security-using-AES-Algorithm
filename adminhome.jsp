<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%String pass1=null; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by TEMPLATED
http://templated.co
Released for free under the Creative Commons Attribution License

Name       : LoveRomance 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120923

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>cyber crime</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css' />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
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

/* body {
  padding: 0 2em;
  font-family: Arial, sans-serif;
  color: #024457;
  background: #f2f2f2;
} */

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
<div id="head1" style="font-family:'Oswald', sans-serif;font-size: 45px;text-transform: uppercase;	font-weight:bold;color:white;text-align: center;">Applying Data Mining Techniques in Cyber Crimes</div>
<div id="header">
	
	<div id="menu">
		<ul>
			<li ><a href="adminhome.jsp" accesskey="1" title="">User Details</a></li>
				<li><a href="view_request.jsp" accesskey="3" title="">Key Request Details</a></li>
				<li><a href="attack.jsp" accesskey="3" title="">Attack Log Files</a></li>
				<li><a href="graph.jsp" accesskey="3" title="">Graph</a></li>
				<li><a href="admin.jsp" accesskey="3" title="">Logout</a></li>
		
		</ul>
	</div>
</div>
<div id="banner-wrapper">
	<div id="banner" style="border:5px solid black;"><img src="images/banner2.png" width="1000" height="245" alt="" /></div>
</div>
<div id="page-wrapper">
<!-- 	<div id="page">
		<div id="content">
			<div>
				<h2>Nulla luctus eleifend</h2>
				<p>This is <strong>LoveRomance </strong>, a free, fully standards-compliant CSS template designed by <a href="http://templated.co" rel="nofollow">TEMPLATED</a>.   The photos in this template are from <a href="http://fotogrph.com/"> Fotogrph</a>. This free template is released under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so you're pretty much free to do whatever you want with it (even use it commercially) provided you give us credit for it. Have fun :) </p>
				<p>&nbsp;</p>
				<p>Maecenas pede nisl, elementum eu, ornare ac, malesuada at, erat. Proin gravida orci porttitor enim accumsan lacinia. Donec condimentum, urna non molestie semper, ligula enim ornare nibh, quis laoreet eros quam eget ante. Aliquam libero. Vivamus nisl nibh, iaculis vitae, viverra sit amet, ullamcorper vitae, turpis. Aliquam erat volutpat. Vestibulum dui sem, pulvinar sed, imperdiet nec, iaculis nec, leo. Fusce odio. Etiam arcu dui, faucibus eget, placerat vel, sodales eget, orci. Donec ornare neque ac sem. Mauris aliquet. </p>
				<p class="button-style"><a href="#">More Details</a></p>
			</div>
		</div>
		<div id="sidebar">
			<h2>Maecenas  lectus</h2>
			<ul class="style1">
				<li class="first">
					<p><a href="#">Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum congue.</a></p>
				</li>
				<li>
					<p><a href="#">Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum congue.</a></p>
				</li>
				<li>
					<p><a href="#">Aliquam erat volutpat. Pellentesque tristique ante ut risus. Quisque dictum. Integer nisl risus, sagittis convallis, rutrum congue.</a></p>
				</li>
			</ul>
		</div>
	</div> -->
</div>
<div id="footer-wrapper">
	<div id="footer-content">
		<h2 style="font-family:'Oswald', sans-serif;font-size: 35px;text-transform: uppercase;	font-weight:bold;color:black;text-align: center;">View User Details</h2>
		
		
			 <table class="responstable">
          <tr> 
            <th>User ID</th>
            <th>Username</th>
            <th>Email</th>
             <th>DOB</th>
            <th>Mobile</th>
            <th>State</th>
            <th>Country</th>
            <th>Action</th>
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
 String sqll="select * from register where password='"+pass1+"'";
 rs=st.executeQuery(sqll);
while(rs.next()){
	String uid=rs.getString("id");
	String uname=rs.getString("name");
	String email=rs.getString("email");
	String dob=rs.getString("dob");
	String mobile=rs.getString("mobile");
	String state=rs.getString("state");
	String country=rs.getString("country");
%>
          <tr> 
            <td height="41" ><%=uid%></td>
            <td><%=uname%></td>
             <td><%=email%></td>
             <td><%=dob%></td>
             <td><%=mobile%></td>
             <td><%=state%></td>
             <td><%=country%></td>
              <td><a href="create_password.jsp?uid1=<%=uid%>&&email1=<%=email%>">Create Password</a></td>
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
	<p>Applying Data Mining Techniques in Cyber Crimes</p>
</div>
</body>
</html>
