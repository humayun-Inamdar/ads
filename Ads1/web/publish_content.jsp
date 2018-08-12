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
  <script>
      function pay()
      {
          var a=document.querySelectorAll("input[type=checkbox][name=chk]");
          var l=a.length;
         // alert(l);
          //alert(a.value);
          for(i=0;i<l;i++)
          {
            if(a[i].checked==true)
            {
                alert(a[i].value);
            }
          }
      }
      function onlyone(checkbox)
      {
        //  alert(checkbox.value);
          sessionStorage.setItem("id",checkbox.value);
          window.location="http://localhost:8080/Ads1/pc.jsp";    
            
           /* c.foreach((item)=>
                  {
                      if(item!== checkbox) item.checked=false
                 
          })*/
      }
      </script>
</head>
<body>
  <% 
      String mid = request.getParameter("chk");
       session.setAttribute("mid",mid);
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
            resultset = statement.executeQuery("select a_name,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,cmp,mid from m_content where pid='"+userID +"' ");
         /* String aname = "";
 if(resultset.next()){
	 aname = resultset.getString("a_name");
 }
                 resultset =  statement.executeQuery("select pc_id,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,Ad_request,Bilable_impression,count,cmp,fill_Rate from p_content,m_content") ;*/ 
        %>
 <br>
			<center><h1>Publish Content</h1></center><br>
				<table>
					<thead>
						<tr>
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
                                                         <th>Payment</th>
						</tr>
                                                  <thead>
                                                <% while(resultset.next()){ %>
                                                 <tbody>
						<tr>
							<td> <%= resultset.getString(1) %></td>
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
                                                        
                                                          <td><input type="checkbox" name="chk" value="<%= resultset.getInt(13)%>" id="chk" onclick="onlyone(this)" /></td>
                                                      
						</tr> <% } %>
						
					  </tbody>
                         </table>
			

</body>

</html>

