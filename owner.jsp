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
<script language="javascript" type="text/javascript">

function valid()
{
var aa=document.s.name.value;
if(aa=="")
{
alert("Enter Name");
document.s.name.focus();
return false;
}
var dd=document.s.pass.value;
if(dd=="")
{
alert("Enter Password");
document.s.pass.focus();
return false;
}
}
</script>
</head>
<body>
<div id="head1" style="font-family:'Oswald', sans-serif;font-size: 45px;text-transform: uppercase;	font-weight:bold;color:white;text-align: center;">cloud data security using AES algorithm</div>
<div id="header">
	
	<div id="menu">
		<ul>
			<li><a href="index.html" accesskey="1" title="">Homepage</a></li>
			<li><a href="cloud.jsp" accesskey="2" title="">Cloud</a></li>
			<li class="current_page_item"><a href="owner.jsp" accesskey="2" title="">Data Owner</a></li>
			<li><a href="user.jsp" accesskey="2" title="">Data User</a></li>		
		</ul>
	</div>
</div>
<div id="banner-wrapper">
	<div id="banner" style="border:5px solid black;"><img src="images/1920x750_Cloud_Security_Blog-2.jpg" width="1000" height="245" alt="" /></div>
</div>
<div id="page-wrapper">

</div>
<div id="footer-wrapper">
	<div id="footer-content">
		<h2 style="font-family:'Oswald', sans-serif;font-size: 35px;text-transform: uppercase;	font-weight:bold;color:black;text-align: center;">DATA OWNER LOGIN</h2>
		<div id="fbox1">
			<p><img src="images/user1.png" width="250" height="250" alt="" style="margin-left:50px;margin-top:40px;"/></p>
			
		</div>
		<div id="fbox2" style="border:5px solid black;border-radius:10px;">
			<form name="s" action="ownerdb.jsp" method="get" onSubmit="return valid()" >          
       
		<!-- <b><marquee behavior="alternate"><marquee width="200">Register   Here</marquee></marquee></b></font></td></tr> -->
	      
        
		<!-- <b><marquee behavior="alternate"><marquee width="200">Register   Here</marquee></marquee></b></font></td></tr> -->
		<table width="446" height="174" style="padding-top:20px;margin-left:50px;margin-top:30px;padding-left:130px;">
		<tr><td><font size="4" color="black"><b>Username</b></font></td> 
		<td><input type="text" name="name" placeholder="Username" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>Password</b></font></td> 
		<td><input type="password" name="pass" placeholder="Password" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
	    </table>
		<input type="submit" value="Login" style="margin-left:300px;background-color:black;color:white;font-size:20px;margin-top:20px;"><br></br>
		<a href="owner_register.jsp" style="color:black;margin-left:230px;font-weight:bold;font-size:25px;">Click Here to Register</a><br></br>
		<img src="images/point1.png" width="100" height="70" style="margin-left:280px;"></img>
		</form>
		</div>
		
	</div>
</div>
<div id="footer">
</div>
</body>
</html>
