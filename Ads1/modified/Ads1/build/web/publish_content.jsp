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
  
  <link href="style.css" rel="stylesheet" type="text/css" >
 
     <link href="report.css" rel="stylesheet" type="text/css" >

<style>
h {background-color: powderblue;}

p    {color: red;}
body {
   background-image: url("images/wb.png");
}
</style>
 </head> 
      
<body>
<h2> 

 <a href="Provider_data.jsp"><font color="white" style="arial">Back </font></a>&nbsp&nbsp
 <a href="Provider_data.jsp"><font color="white" style="arial">Import Data </font></a>&nbsp&nbsp
            <a href="contactus.jsp"><font color="white" style="arial">Contact Us </font></a>&nbsp&nbsp
            <a href="about.jsp"><font color="white" style="arial">About Us </font></a>&nbsp&nbsp
            <a href="logout.jsp"><font color="white" style="arial">Logout </font></a>
          
                  </h2>
  <% 
       //String id=request.getParameter("");
   //   String mid = request.getParameter("chk");
      // session.setAttribute("mid",mid);
    //  String id=request.getParameter("chk");
       //     session.setAttribute("id",id);
       String username= (String)session.getAttribute("user");
       String name= (String)session.getAttribute("aname");
              Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement() ;
             ResultSet resultset = statement.executeQuery("select pid from new_provider where user='"+username+"'");
          String userID = "";
 if(resultset.next()){
	  userID = resultset.getString("pid");
 }
           // resultset =  statement.executeQuery("select m_name,Ad_request,Bilable_impression,count,fill_rate from m_content,p_content where m_content.a_name=p_content.m_name and pid='"+userID+"'");
            resultset = statement.executeQuery("select mid,a_name,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,cmp,status1 from m_content where pid='"+userID +"' ");
        
         //        resultset =  statement.executeQuery("select pc_id,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,Ad_request,Bilable_impression,count,cmp,fill_Rate from p_content,m_content") ;*/ 
        %>
 <br>
			<center><h2>Publish Content</h2></center><br>
                      
                        <form action="payment.jsp" method="post">
                              <h1><font color="white" > Please Select Your Payment Mode Here.</font></h1>
                            <select name="role"  id="role">
        <option value="select">Select mode</option>
        <option value="Creadit">By Creadit Card</option>
        <option value="Debit">By Debit Card</option>
        <option value="Cash">By Cash</option>
      </select>
                           
				<table>
					<thead>
						<tr>
                                                          <th>ID<input type="submit" name="btn" value="Payment"></th>
							<th> Advertise name</th>
                                                        <th>Date&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
                                                          <th>Domain </th>
                                                           <th>Ads File</th>
                                                         <th>Ads size</th>
                                                          <th>Start Time1</th>
                                                          <th>Time1(sec)</th>
                                                           <th>Start Time2</th>
                                                         <th>Time2(sec)</th>
                                                           <th>Start Time3</th>
                                                         <th>Time3(sec)</th>
                                                          
                                                         <th>Ads_cmp</th>
                                                         <th>Payment Status</th>
                                                         
                                                       
						</tr>
                                        </thead>
                                                <% while(resultset.next()){ %>
                                                 <tbody>
						<tr>
							<td><input type="checkbox" name="chk" value="<%= resultset.getString(1) %>" id="chk" /><%= resultset.getString(1) %> </td>
                                                          <td> <%= resultset.getString(2) %></td>
                                                          <td> <%= resultset.getString(3) %></td>
                                                          <td> <%= resultset.getString(4) %></td>
                                                          <td> <%= resultset.getString(5) %></td>
                                                         <td> <%= resultset.getString(6) %></td>
                                                          <td> <%= resultset.getString(7) %></td>
                                                          <td> <%= resultset.getString(8) %></td>
                                                          <td> <%= resultset.getString(9) %></td>
                                                          <td> <%= resultset.getString(10) %></td>
                                                          <td> <%= resultset.getString(11) %></td>
                                                          <td> <%= resultset.getString(12) %></td>
                                                         <td> <%= resultset.getString(13) %></td>
                                                          <td> <%= resultset.getString(14) %></td>
                                                     </tr><%}%>   
						
                                                  
						
					  </tbody>
                         </table>
			</form>

</body>

</html>

