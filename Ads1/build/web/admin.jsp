<%-- 
    Document   : admin
    Created on : 8 Feb, 2018, 8:08:29 PM
    Author     : dnyaneshwar
--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>admin</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
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
		   document.F1.username.focus()
		   return false
		}
   }

  
   if((form.username.value="Dnyaneshwar")&&(form.password.value="derle123"))
   {
       alert("Login Successfully....")
       window.open('p_rp.jsp')
	  
   }
   else
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

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
    <td valign="top" width="220px">
    	<a href="https://www.google.com.tw"><img src="images/g.gif" alt="" border="0" width="350"/> </a> 
    <h1>google</h1>
    	<p align="right"><a href="#" class="more">View More</a></p>
    </td> <td valign="top">
   		   
				  <%  out.print("<font color=white>WELCOME TO ADMINISTRATION LOGIN");
	%>
    
    	<form onSubmit="return dil(this)" action="adminprocess.jsp" >
				   <table cellspacing="10" cellpadding="8">	
				  <%if(request.getAttribute("aa")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("aa")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
	    			<tr><td><h1>USERNAME:</h1></td><td> <input type="text" name="username"/></td></tr>
					
					<tr><td><h1>PASSWORD:</h1></td><td> <input type="password" name="password"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Submit"/>
					
                   
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
  </div>
</div>
</body>
</html>

</head>

<body>

</div>

</body>
</html>