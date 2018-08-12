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
<link rel="stylesheet" href="materialize.css">
<link href="style1.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}

</script> 
    <style>
h {background-color: white;}

p    {color: red;}
body {
   background-image: url("images/wb.png");
 background-color: white;
}
#navigations
{
margin:0 auto;
background-image:url("images/alogo.jpg") 0 0 repeat-x;
height:430px;
width:1540px;
}
</style>
</head>

<body class="white">
<hp1>      
 

<font color="white"><i><span id='ct' ></span></i></font>
<script>
      var strcount;
var x = new Date();
var x1=x.toUTCString();// changing the display to UTC string
document.getElementById('ct').innerHTML = x1;
tt=display_c();
</script>
<div id="navigation">
 
    <b1></b1>
       <hp1>  <center><font size="6"><b><i>   Advertisment Provider
            Data Aggregator </i></b></font></center></hp1>
  

     <script>
         n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML = m + "/" + d + "/" + y;
var d = new Date();
document.getElementById("demo").innerHTML = d.toDateString();
</script>
        <img class="fish" src="images/computer-image.png"  />
        <div class="fish"></div> 
    	<ul>        
      <d>  <li><b><a href="index.jsp">Home</a></b></li>
            <li><b><a href="admin.jsp">Administrator </a></b></li>
            <li><b><a href="Provider.jsp">Provider</a></b></li>
            <li><b><a href="contactus.jsp">Contact Us</a></b></li>
             <li><b><a href="about.jsp">About Us</a></b></li></font></d>
        </ul>	
        </div>
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
			out.print("<font color=blue><font size=15>"+request.getAttribute("welcome"));
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
			out.print("<font color=blue><font size=15>"+request.getAttribute("check"));
			
			out.print("</div>"); 
			}
			
			 %>
				  <h1>Please Login Here</h1>
				  <tr><td><h1>USERNAME:<h1></td><td> <input type="text" name="um" id="name"/></td></tr>
					
					<tr><td><h1>PASSWORD:<h1></td><td> <input type="password" name="psw" id="pass"/></td></tr>
					
                                                        <tr><td><a href="new_user.jsp"><h1>New User</h1></a></td><td><input type="submit" value="Submit" onclick="ctck(this.form)" />
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
                   
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
   
  </tr>
  <tr><td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td></tr>
</table>


</html>