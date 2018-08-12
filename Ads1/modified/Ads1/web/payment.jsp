<%-- 
    Document   : publish_containt
    Created on : 26 Feb, 2018, 6:14:31 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Provider data</title>

   <link rel="stylesheet" href="add.css">

  <link rel="stylesheet" href="materialize.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  
<style>
h {background-color: powderblue;}

p    {color: red;}
body {
   background-image: url("images/wb.png");
   html,
body {
    height: 70%;
}
html {
    display: table;
    margin: auto;
}
body {
    background-color:white;
  //   background-image: url("images/wb.png");
    display: table-cell;
    vertical-align: middle;
}
.margin {
  margin: 0 !important;
}
}
</style>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
a1{  
color:white;  
background-image:url("images/bg.jpeg");  
padding:8px;
font-size:30px;
width:2000px;
height:130px;
border-radius:20px;
font-size:30px;
padding-left:10px;
border:none;
} 
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

select {
  margin-bottom: 1em;
  padding: .25em;
  border: 0;
  border-bottom: 2px solid currentcolor; 
  font-weight: bold;
  letter-spacing: .15em;
  border-radius: 0;
  &:focus, &:active {
    outline: 0;
    border-bottom-color: red;
  }
}
</style>


 </head> 
 
      
<body  background="images/wb.png" >

     
      	
 <div id="login-page" class="row">
     <form action="bill.jsp" method="post">
    <div class="col s12 z-depth-6 card-panel">
     
        <div class="row">
          <div class="input-field col s12 center">
              
              <ul>
             

                  <li><a href="publish_content.jsp"><font color="white" style="arial" >Back </font></a></li>&nbsp&nbsp
                  <li><a href="Provider_data.jsp"><font color="white" style="arial">Import Data </font></a></li>&nbsp&nbsp
                  <li><a href="contactus.jsp"><font color="white" style="arial">Contact Us </font></a></li>&nbsp&nbsp
                  <li><a href="about.jsp"><font color="white" style="arial">About Us </font></a></li>&nbsp&nbsp
                  <li> <a href="logout.jsp"><font color="white" style="arial">Logout </font></a></li>
          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
          
          
          
         
                </ul>
              
            <img src="images/alogo.jpg" alt="" class="responsive-img valign profile-image-login" width="650">
         
          </div>
        </div>
          <div class="row margin">
              <div id="demo" ></div>
               <script>
         n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("demo").innerHTML = y + "-" + m + "-" +d ;
</script>

     
<%
       String select= request.getParameter("chk");
       session.setAttribute("chk", select);
       String mode=request.getParameter("role");
       
              Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement(); 
            ResultSet resultset;
          //   ResultSet resultset = statement.executeQuery("select a_name,mid from m_content where mid="+mid+" ");
       //   String a_name = "";
 //if(resultset.next()){
	//  a_name = resultset.getString("a_name");
// }
           // resultset =  statement.executeQuery("select m_name,Ad_request,Bilable_impression,count,fill_rate from m_content,p_content where m_content.a_name=p_content.m_name and pid='"+userID+"'");
        //  for (int i = 0; i < select.length; i++)
       //   {
           
       //     PreparedStatement st = con.prepareStatement("insert into payment(Ads_name,mpid) VALUES ('" + name + "',"+mid1+")");
    
         // ResultSet resultset1;
           //  int j=st.executeUpdate();
       //     fr=(complete/Adr)*100;
             PreparedStatement   st;
 //if(j>0)
            
 //{
          //  resultset = statement.executeQuery("select a_name,date,a_size,time_sec1,time_sec2,time_sec3,cmp,mid from m_content where mid="+select+" ");
                 resultset = statement.executeQuery("select a_name,date,a_size,time_sec1,time_sec2,time_sec3,cmp,mid from m_content where mid="+select+" ");
             String name="";
             String mid1="";
             int t1=0,t2=0,t3=0;
                 
             int cmp=0;
              int ttime;
               int pay;
                int tpay;
            if(resultset.next())
            {
                     name = resultset.getString("a_name");
                     mid1=resultset.getString("mid");
                      t1=resultset.getInt("time_sec1");
               t2=resultset.getInt("time_sec2");
                t3=resultset.getInt("time_sec3");
                cmp=resultset.getInt("cmp");
                      name = resultset.getString("a_name");
            }
             ttime=t1+t2+t3;
                pay= (ttime * 64);
                tpay=pay-cmp;
               // out.println(pay);
                
        resultset = statement.executeQuery("select py_id,Ads_name,total_time,pay,total_pay,pay_mod,mpid from payment where mpid='"+select+"'");
      // String ad_name="";
        if(resultset.next())
        {
               int py_id=resultset.getInt("py_id");
          //  mode=resultset.getString("pay_mod");
            tpay=resultset.getInt("total_pay");
            pay=resultset.getInt("pay");
            ttime=resultset.getInt("total_time");
           
             st = con.prepareStatement("update payment set total_pay=? and pay=? and total_time=? and Ads_name=? and pay_mod=? where py_id=?");
             st.setInt(1,tpay);
             st.setInt(2, pay);
              st.setInt(3, ttime);
             st.setString(4,name);
             st.setString(5,mode);
              st.setInt(6,py_id);
               
             st.executeUpdate();
        }
        else
        {
            st=con.prepareStatement("insert into  payment(Ads_name,total_time,pay,total_pay,pay_mod,mpid) values(?,?,?,?,?,?)");
            st.setString(1,name);
            st.setInt(2,ttime);
            st.setInt(3, pay);
            st.setInt(4, tpay);
            st.setString(5, mode);
            st.setString(6,mid1);
            
          
            st.executeUpdate();
        }
           
    /* double Adr=resultset.getDouble("Ad_request");

    double complete=resultset.getDouble("Bilable_impression");
   String name = resultset.getString("m_name");
      double fr=(complete/Adr)*100;
           PreparedStatement st = con.prepareStatement("update p_content set fill_rate=? where m_name=?");
               st.setDouble(1,fr);
               st.setString(2,name);
              st.executeUpdate();*/
              resultset = statement.executeQuery("select a_name,date,a_size,time_sec1,time_sec2,time_sec3,pay,cmp,total_pay,pay_mod from m_content,payment where m_content.mid=payment.mpid and mpid='"+select+"' ");

     //out.println("value inserted.....");
             // response.sendRedirect("pays.jsp");
 //   }
// else
 //{
    // out.println("value Can't insert.....");
 //}
         
         // resultset = statement.executeQuery("select a_name,date,a_size,time_sec1,time_sec2,time_sec3,total_pay,cmp,pay from m_content,payment where m_content.mid=payment.mpid and mpid="+mid1+" ");
             
                // resultset =  statement.executeQuery("select pc_id,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,Ad_request,Bilable_impression,count,cmp,fill_Rate from p_content,m_content") ; 
        %>
  <br>
   
			<center>  <font size="15" style="arial" ><i><b>Publish Content</b></i></font></p><br>
                        
				<table style="width:70%">
 
					
                                                <% while(resultset.next()){ %>
                                                 <tr>
							 <th> Advertise name:-</th>
                                                         <td><%= resultset.getString(1) %></td>
                                                 </tr>       
                                                  <tr>
                                                      <th>Date:-</th>
                                                      <td><%= resultset.getString(2) %></td>
                                                  </tr>
                                                   <tr>
                                                       <th>Size:-</th>
                                                       <td><%= resultset.getString(3) %></td>
                                                   </tr>
                                                   <tr>
                                                       <th>First Time:-</th> 
                                                       <td><%= resultset.getString(4) %></td>
                                                   </tr>
                                                   <tr>
                                                       <th>Second Time:-</th>
                                                       <td><%= resultset.getString(5) %></td>
                                                   </tr>
                                                   <tr>
                                                       <th>Third Time:-</th>
                                                       <td><%= resultset.getString(6) %></td>
                                                   </tr>
                                                   <tr>
                                                       <th>Total Payment:-</th>
                                                       <td><%= resultset.getString(7) %></td>
                                                   </tr>
                                                   <tr>
                                                       <th>Advanced Payment:-</th>
                                                       <td><%= resultset.getString(8) %></td>
                                                   </tr>
                                                   <tr>
                                                       <th>Required Payment:-</th>
                                                       <td><%= resultset.getString(9) %></td>
                                                   </tr>  
                                                    <tr>
                                                       <th>Payment mode:-</th>
                                                       <td><%= resultset.getString(10) %></td>
                                                   </tr>  
                                                    
                                                   
                                                    <% } %>
					
                                                      
                                                            
                                                     	
                                </table>
                                                  
                                                    <input type="submit" value="Print" >
                                                    <a href="publish_content.jsp"><input type="submit" value="Save"></a>
                                                 <a href="publish_content.jsp"><input type="submit" value="Cancle"></a>
			</form>
</center>
 </div>
  </div>
  <center>
      
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Post Page - Responsive -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-5104998679826243"
     data-ad-slot="3470684978"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</center>

 
 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!--materialize js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>



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

</body>

</html>
