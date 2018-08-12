<%-- 
    Document   : bill
    Created on : 26 Mar, 2018, 12:56:49 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*"  contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Example 2</title>
    <link rel="stylesheet" href="style1.css" media="all" />
  </head>
  <style>
      ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

  </style>
      
 
             

                  <li><a href="publish_content.jsp"><font color="black" style="arial" >Back </font></a></li>&nbsp&nbsp
                  <li><a href="Provider_data.jsp"><font color="black" style="arial">Import Data </font></a></li>&nbsp&nbsp
                  <li><a href="contactus.jsp"><font color="black" style="arial">Contact Us </font></a></li>&nbsp&nbsp
                  <li><a href="about.jsp"><font color="black" style="arial">About Us </font></a></li>&nbsp&nbsp
                  <li> <a href="logout.jsp"><font color="black" style="arial">Logout </font></a></li>
          
          
          
          
         
             
  <body>
 
              
    <header class="clearfix">
      <div id="logo">
        <img src="images/alogo.jpg">
      </div>
      <div id="company">
        <h2 class="name">Open Ads Network</h2>
        <div>455 Foggy Heights, AZ 85004, US</div>
        <div>(602) 519-0450</div>
        <div><a href="mailto:openads@example.com">openads@example.com</a></div>
      </div>
      </div>
    </header>
    <main>
      <div id="details" class="clearfix">
        <div id="client">
        <%
            String date=request.getParameter("demo");
             String mid= (String)session.getAttribute("chk");
             Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement(); 
            ResultSet resultset;
             PreparedStatement   st;
            resultset = statement.executeQuery("select a_name,cmp,mid,pid from m_content where mid="+mid+" ");
             String pid="";
               if(resultset.next())
            {
                pid=resultset.getString("pid");
            }
             resultset = statement.executeQuery("select p_name,email,pid from new_provider where pid='"+pid+"'");

            
        %>
        <% while(resultset.next()){ %>
          <h2 class="name"><%= resultset.getString(1) %></h2>
        </div>
        <div id="invoice">
          <% } %>
            Date:  <div class="date" id="demo"> </div>
               <script>
         n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("demo").innerHTML = y + "-" + m + "-" +d ;
</script>
        </div>
      </div>
      <table border="0" cellspacing="0" cellpadding="0">
        <thead>
          <tr>
            <th class="no">#</th>
            <th class="desc">DESCRIPTION</th>
           
            <th class="total">TOTAL</th>
          </tr>
        </thead>
  <tbody>
      <%
                resultset = statement.executeQuery("select Ads_name,pay,mpid from payment where mpid='"+mid+"'");

      %>
       <% while(resultset.next()){ %>
          <tr>
            <td class="no">01</td>
            <td class="desc"><h3>Advertise Name</h3>Creating a recognizable design solution based on the company's existing visual identity</td>
            <td class="total"><%= resultset.getString(1) %></td>
          </tr>
          <tr>
            <td class="no">02</td>
            <td class="desc"><h3>Total Payment</h3>Developing a Content Management System-based Website</td>
            <td class="total"><%= resultset.getString(2) %></td>
          </tr>
           <% }
                      resultset = statement.executeQuery("select cmp,mid from m_content where mid="+mid+" ");
           %>
            <% while(resultset.next()){ %>
          <tr>
            <td class="no">03</td>
            <td class="desc"><h3>Your Advanced</h3>Optimize the site for search engines (SEO)</td>
            <td class="total"><%= resultset.getString(1) %></td>
          </tr>
           <% }
                            resultset = statement.executeQuery("select total_pay,mpid from payment where mpid='"+mid+"'");

            %>
        </tbody>
        <tfoot>
            <% while(resultset.next()){ %>
          <tr>
           
            <td colspan="2">SUBTOTAL</td>
            <td><%= resultset.getString(1) %></td>
          </tr>
          <tr>
            
            <td colspan="2">GRAND TOTAL</td>
            <td><%= resultset.getString(1) %></td>
          </tr>
           <% }
                       String status1="paid";
                       			//java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
                        //java.util.Date utilDate = new java.util.Date();
                                                // java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
                         st = con.prepareStatement("update m_content set   status1=? where mid=?");
                           //  st.setDate(1, sqlDate);
                             st.setString(1,status1);
                             st.setString(2,mid);
                             st.executeUpdate();
            
            %>
        </tfoot>
      </table>
      <div id="thanks">Thank you!</div>
      <div id="notices">
        <div>NOTICE:</div>
        <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
      </div>
    </main>
    <footer>
      Invoice was created on a computer and is valid without the signature and seal.
    </footer>
     
  </body>
  
</html>
