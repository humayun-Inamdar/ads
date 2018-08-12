<%-- 
    Document   : publish_containt
    Created on : 26 Feb, 2018, 6:14:31 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>P_contents</title>
  
  <link href="style.css" rel="stylesheet" type="text/css">
 
     <link href="report.css" rel="stylesheet" type="text/css">

<style>
h {background-color: powderblue;}

p    {color: red;}
body {
   background-image: url("images/wb.png");
}
</style>
<h3>
  <a href="p_rp.jsp"><font color="white">Back</font></a>&nbsp&nbsp&nbsp&nbsp
  <a href="logout.jsp"><font color="white">Logout</font></a>
</h3>        
</head>
<body>
  
     
<%
      
              Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement(); 
            ResultSet resultset;
        
             resultset = statement.executeQuery("select m_name,Ad_request,Bilable_impression,count,fill_rate from p_content  ");
             
         

        
        %>
 <br>
			<center><h2>Ads Requested & More Details</h2></center><br>
				<table>
					<thead>
						<tr>
							<th> Advertise name</th>
                                                          <th>Advertise Request</th>
                                                          <th>Completed Reduests</th>
                                                           <th>Count&nbsp&nbsp&nbsp&nbsp</th>
                                                         <th>Fill Rate(%)</th>
                                                        
                                                     
						</tr>
                                                  <thead>
                                                <% while(resultset.next()){ %>
                                                 <tbody>
						<tr>
							<td><input type="checkbox" name="chk" value="<%= resultset.getString(1) %>" id="chk" /> <%= resultset.getString(1) %></td>
                                                          <td> <%= resultset.getString(2) %></td>
                                                          <td> <%= resultset.getString(3) %></td>
                                                          <td> <%= resultset.getString(4) %></td>
                                                          <td> <%= resultset.getString(5) %></td>
                                                        
                                                        
                                                      
						</tr> <% } %>
						
					  </tbody>
                         </table>
			

</body>

</html>

