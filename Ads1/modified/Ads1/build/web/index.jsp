<%-- 
    Document   : index
    Created on : 8 Feb, 2018, 5:18:18 PM
    Author     : dnyaneshwar
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Advertisment</title>
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
            <h3>
      <d>  <li><b><a href="index.jsp">Home</a></b></li>
            <li><b><a href="admin.jsp">Administrator </a></b></li>
            <li><b><a href="Provider.jsp">Provider</a></b></li>
            <li><b><a href="contactus.jsp">Contact Us</a></b></li>
             <li><b><a href="about.jsp">About Us</a></b></li></font></d>
            </h3>
        </ul>	
        </div>
</div>
</hp1>
<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
<%if(request.getAttribute("order")!=null)
			{
			out.print("<table>");
			out.print("<div width='200' align='left'>");
			out.print("<font color='blue'><font size='10'>"+request.getAttribute("order"));
			
			out.print("</div>"); 
			out.print("<table>");
			}
			
			 %>
			 
			 

  <tr align="justify">
    <td valign="top" width="200px">
    	<a href="https://www.google.com.tw"><img src="images/g.gif" alt="" border="0" width="350"/> </a> 
    <h1>google</h1>
    	<p align="right"><a href="#" class="more">View More</a></p>
    </td>
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

</table>
  </div>
</div>
<br>
    <br>
        <br>
  <center> <h1> Designed by Dnyaneshwar Derle,
                                  Sawan Londe,
                                  Humayun Inamdar</h1></center>
  
  </div>
</div>
</body>
</html>

</head>

<body>
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
      <center><img  alt="business"  width="196" height="106"></center><br>
</div>


</body>
</html>