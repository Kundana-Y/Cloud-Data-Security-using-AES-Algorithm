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
<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>
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


var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.s.email.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.s.email.focus();
return false;
}
var dd=document.s.dob.value;
if(dd=="")
{
alert("select date of birth");
document.s.dob.focus();
return false;
}
var k = document.s.mobile.value;
if(k=="")
{
alert("Enter mobile number");
document.s.mobile.focus();
return false;
}
if(isNaN(k))
{
alert("Enter mobile number in numbers");
document.s.mobile.focus();
return false;
}

if(k.length!=10)
{
alert("Enter 10 digits");
document.s.mobile.focus();
return false;
}
var bb=document.s.state.value;
if(bb=="")
{
alert("Enter State");
document.s.state.focus();
return false;
}
var cc=document.s.country.value;
if(cc=="")
{
alert("Enter Country");
document.s.country.focus();
return false;
}
}
</script>
</head>
<body>
<div id="head1" style="font-family:'Oswald', sans-serif;font-size: 45px;text-transform: uppercase;	font-weight:bold;color:white;text-align: center;">cloud data security using AES algorithm</div>

<div id="page-wrapper">

</div>
<div id="footer-wrapper">
	<div id="footer-content">
		<h2 style="font-family:'Oswald', sans-serif;font-size: 35px;text-transform: uppercase;	font-weight:bold;color:black;text-align: center;">OWNER REGISTRATION</h2>
		<div id="fbox1">
			<p><img src="images/register1.png" width="250" height="250" alt="" style="margin-left:50px;margin-top:100px;"/></p>
			
		</div>
		<div id="fbox2" style="border:5px solid black;border-radius:10px;">
			<form name="s" action="register.jsp" method="get" onSubmit="return valid()" >          
       
		<!-- <b><marquee behavior="alternate"><marquee width="200">Register   Here</marquee></marquee></b></font></td></tr> -->
	       
        
		<!-- <b><marquee behavior="alternate"><marquee width="200">Register   Here</marquee></marquee></b></font></td></tr> -->
		<table width="656" height="374" style="padding-top:20px;margin-left:50px;margin-top:30px;padding-left:100px;">
		<tr><td><font size="4" color="black"><b>Owner Name</b></font></td> 
		<td><input type="text" name="name" placeholder="Username" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>Email</b></font></td> 
		<td><input type="email" name="email" placeholder="Email" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>Password</b></font></td> 
		<td><input type="password" name="pass" placeholder="Password" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>DOB</b></font></td> 
		 <td><input id="demo1" type="text" name="dob"  class="c" placeholder="DOB" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;">
        <a href="javascript:NewCal('demo1','ddmmyyyy')"><img src="cal.gif" width="22" height="18" border="0" alt="Pick a date"></a> 
		</td></tr>
		<tr><td><font size="4" color="black"><b>Mobile</b></font></td> 
		<td><input type="text" name="mobile" placeholder="Mobile" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>State</b></font></td> 
		<td><input type="text" name="state" placeholder="State" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
		<tr><td><font size="4" color="black"><b>Country</b></font></td> 
		<td><input type="text" name="country" placeholder="Country" style="border-radius:10px;width:200px;height:30px;color:black;border:2px solid black;font-size:20px;"></td>
		</tr>
	    </table>
		<input type="submit" value="Register" style="margin-left:270px;background-color:black;color:white;font-size:20px;margin-top:20px;"><br></br>
		
		</form>
		</div>
		
	</div>
</div>
<div id="footer">
</div>
</body>
</html>
