<%-- 
    Document   : Ads
    Created on : 23 Mar, 2018, 6:59:22 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
           double Adr=5;
           double complete=7;
            double fr=(complete/Adr)*100;
             out.println(fr);
          /*  String ad = request.getParameter("ad");
             Class.forName("com.mysql.jdbc.Driver").newInstance();
     Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement() ;
          //   ResultSet resultset = statement.executeQuery("select mid,a_name,status from m_content where mid='"+id+"'");
          String status = "Completed";
          int id1;
          String nm="";
 if(resultset.next()){
   //  out.println("value selected");
     //String status="completed";
	 nm = resultset.getString("a_name");
     id1=resultset.getInt("mid");
        PreparedStatement st = con.prepareStatement("update m_content set status=? where mid=?");
         st.setString(1,status);
         st.setInt(2, id1);
         
        int i=st.executeUpdate();
   if(i>0)
    {
        resultset = statement.executeQuery("select m_name,Bilable_impression,pc_id from p_content where m_name='"+nm+"'");
        if(resultset.next())
        {
               int comp=resultset.getInt("Bilable_impression");
            String name=resultset.getString("m_name");
            comp++;
             st = con.prepareStatement("update p_content set Bilable_impression=? where m_name=?");
             st.setInt(1,comp);
             st.setString(2, name);
             st.executeUpdate();
        }
        else
        {
            out.println("please select Advertise....");
        }

 }
 }*/
       %>
    </body>
</html>
