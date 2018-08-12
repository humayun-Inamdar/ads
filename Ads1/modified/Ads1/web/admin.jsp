<%-- 
    Document   : admin
    Created on : 8 Feb, 2018, 8:08:29 PM
    Author     : dnyaneshwar
--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>admin</title>
<link rel="stylesheet" href="materialize.css">
<link href="style1.css" rel="stylesheet" type="text/css">
 <link rel="stylesheet" href="add.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  
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
.img1 {
    border-radius: 50%;
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
    <span>
       <hp1>  <center><font size="6"><b><i>   Advertisment Provider
            Data Aggregator </i>/b></font></center></hp1>
  
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
    <td valign="top" width="220px">
    	<a href="https://www.google.com.tw"><img src="images/g.gif" alt="" border="0" width="350"/> </a> 
    <h1>google</h1>
    	<p align="right"><a href="#" class="more">View More</a></p>
    </td> <td valign="top">
   		   
				  <%  out.print("<font color=black fontstyle=arial ><b><i>WELCOME TO ADMINISTRATION LOGIN</i></b>");
	%>
    
    	<form onSubmit="return dil(this)" action="adminprocess.jsp" method="post" >
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

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27820211-3', 'auto');
  ga('send', 'pageview');

</script><script src="//load.sumome.com/" data-sumo-site-id="1cf2c3d548b156a57050bff06ee37284c67d0884b086bebd8e957ca1c34e99a1" async="async"></script>


          <footer class="page-footer">
              
          <div class="footer-copyright">
            <div class="container">
            © 2018 Open Ads Network
         
            </div>
          </div>
  </footer>
        <div>
            <div>
                
  
  
  </div>
</div>

</body>
</html>