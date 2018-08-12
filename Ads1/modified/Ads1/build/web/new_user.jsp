<%-- 
    Document   : new_user
    Created on : 8 Feb, 2018, 10:21:32 PM
    Author     : dnyaneshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" import="java.io.*" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>new_user</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>


<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }
 if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }
  
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
	
	 if(!isNaN(document.F1.disname.value))
   {
       alert("DISTRIBUTER NAME  must  be  char's & can't be null")
	   document.F1.disname.value=""
	   document.F1.disname.focus()
	   return false
   }
   
    if(!isNaN(document.F1.adderess.value))
   {
       alert("adderess field  must  be  char's & can't be null")
	   document.F1.adderess.value=""
	   document.F1.adderess.focus()
	   return false
   }
   if(!isNaN(document.F1.cityname.value))
   {
       alert("cityname field  must  be  char's & can't be null")
	   document.F1.cityname.value=""
	   document.F1.cityname.focus()
	   return false
   }
	
	 if(!isNaN(document.F1.statename.value))
   {
       alert("statename field  must  be  char's & can't be null")
	   document.F1.statename.value=""
	   document.F1.statename.focus()
	   return false
   }
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999 )
	   {
		 alert("ye kabhi nhi aayegi")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
	
	
	  
   
   

   return true   
   }
</SCRIPT>
<style>
body {
    background-image: url("images/wb.png");
}
</style>

<div id="navigation">
   
    <b1></b1>
       <hp1>  <center><font size="6"><b><i>   Advertisment Provider
            Data Aggregator </i></b></font></center></hp1>
    <div class="fish"><img class="fish" src="images/computer-image.png" /></div>
    	<ul>        
      <d>  <li><b><a href="index.jsp">Home</a></b></li>
            <li><b><a href="about.jsp">About Us</a></b></li>
            <li><b><a href="admin.jsp">ADMINISTRATOR </a></b></li>
            <li><b><a href="Provider.jsp">PROVIDER</a></b></li>
            <li><b><a href="contactus.jsp">Contact Us</a></b></li></font></d>
        </ul>	
      
</div>

</hp1>

<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
  <tr align="justify">
    <td valign="top" width="220px">
    	<a href="https://www.google.com.tw"><img src="images/g.gif" alt="" border="0" width="350"/> <br /> 
    <h1>google</h1>
    	<p align="right"><a href="#" class="more">View More</a></p>
    </td> <td valign="top">
			
				<form  onSubmit="return dil(this)" action="new_users.jsp" >
				<h1>  <table cellspacing="5" cellpadding="3">	
				
					<tr><td>Provider Id:</td><td> <input type="text" placeholder="Enter id" name="id" required></td></tr>
					<tr><td>Provider Name:</td><td>  <input type="text" placeholder="Enter name" name="nm" required></td></tr>
                                        <tr><td><b>Phone:</b></td><td> <input type="text" placeholder="Enter Phone number" name="phn" required></td></tr>
					<tr><td><b>Email</b></td><td> <input type="text" placeholder="Enter Email" name="email" required></td></tr>
					
					<!-- Gender:<br/><br/>
					Male<input type="radio" name="gender" value="male"> Female<input type="radio" name="gender" value="female"/><br/><br/> -->
					<tr><td><b>Username:</b></td><td> <input type="text" placeholder="Username" name="um" required></td></tr>
					<tr><td><b>Password</b></td><td><input type="password" placeholder="Password" name="psw" required></td></tr>
					<tr><td><b>Repeat Password</b</td><td> <input type="password" placeholder="Repeat Password" name="rpsw" required></td></tr>
				
					<tr><td></td><td><input type="submit" value="Submit"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
               		</form></h1>
				
    	
     <td valign="top">
    	<a href="https://www.youtube.com/"><img src="images/youtube.gif" alt="" border="0"  width="350" /></a>
        <h1>YouTube</h1>
     
        <p align="right"><a href="#" class="more">View More</a></p>
    </td>
    <td valign="top">
    	<a href="https://www.facebook.com/"><img src="images/Facebook.gif" alt="" border="0"  width="200"/></a>
        <h1>Facebook</h1>
    
        <p align="right"><a href="#" class="more">View More</a></p>
    </td>
    <td valign="top">
    	<a href="https://in.yahoo.com/"><img src="images/Yahoo-UK.png" alt="" border="0"  width="200"/></a>
        <h1>Yahoo</h1>
        <p align="right"><a href="#" class="more">View More</a></p>
    </td>
    
  </tr>
  <tr><td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td></tr>
</table>

</body>
</html>
