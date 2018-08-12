<%-- 
    Document   : Provider
    Created on : 8 Feb, 2018, 9:48:05 PM
    Author     : dnyaneshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>provider</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
  var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost:3306",
  user: "root",
  password: "ddd10",
   database: "ad"
});
 window.alert("connected.....");
con.connect(function(err) {
  if (err) throw err;
  window.alert("connected.....");
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.um.focus()
		   return false
		}
   }

  
   if(!isNaN(document.F1.um.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.um.value=""
	   document.F1.um.focus()
	   return false
   }

   if(!isNaN(document.F1.psw.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.psw.value=""
	   document.F1.psw.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
     //  window.alert("hello");
			
                        
function ctck()
{
     if(form.role.value=="2")
     {
         window.open('publish_content.jsp')
     }
     else if(form.role.value=="3")
     {
         window.open('Ploginsuccses.jsp')
     }
     esle
     {
        alert("Please selection your role....");
     }

}
</script>
<style>
body {
    background-image: url("images/wb.png");
}
</style>
<body>
<div id="navigation">
   
    <b1></b1>
       <hp1>  <center><font size="6"><b><i>   Advertisment Provider
            Data Aggregator </i></b></font></center></hp1>
    <div class="fish"><img class="fish" src="images/computer-image.png" /></div>
    	<ul>        
      <d>  <li><b><a href="index.jsp">Home</a></b></li>
            <li><b><a href="admin.jsp">ADMINISTRATOR </a></b></li>
            <li><b><a href="Provider.jsp">PROVIDER</a></b></li>
            <li><b><a href="contactus.jsp">Contact Us</a></b></li>
             <li><b><a href="about.jsp">About Us</a></b></li></font></d>
        </ul>	
        
</div>
</hp1>

<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
<tr align="justify">
     <tr align="justify">
    <td valign="top" width="220px">
    	<a href="https://www.google.com.tw"><img src="images/g.gif" alt="" border="0" width="350"/> </a> 
    <h1>google</h1>
    	<p align="right"><a href="#" class="more">View More</a></p>
    </td> <td valign="top">
    	<form method="POST" onSubmit="return dil(this)" action="Ploginsuccses.jsp" >
				   <table cellspacing="10" cellpadding="8">	
				    <%if(request.getAttribute("welcome")!=null)
			{
			out.print("<div>"); 
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("welcome"));
                        %>
                        <script language="javascript">
			sessionStorage.setItem("nme", "name");
                        </script>
                        <%
			out.print("</div>"); 
			}
			
			 %>
    <%if(request.getAttribute("check")!=null)
			{
			out.print("<div>"); 
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("check"));
			
			out.print("</div>"); 
			}
			
			 %>
				  
				  <tr><td><h1>USERNAME:<h1></td><td> <input type="text" name="um" id="name"/></td></tr>
					
					<tr><td><h1>PASSWORD:<h1></td><td> <input type="password" name="psw" id="pass"/></td></tr>
					
                                                        <tr><td></td><td><input type="submit" value="Submit" onclick="ctck(this.form)/>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
                   <tr><td><a href="new_user.jsp"><h1>New User</h1></a></td></tr>
             	</table>
				</form>
  		
			
		
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