<%-- 
    Document   : pcd
    Created on : 11 Mar, 2018, 5:23:13 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" %>

<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<%
    
   
    String st1=request.getParameter("st1");
   String t1=request.getParameter("t1");
    String st2=request.getParameter("st2");
   String t2=request.getParameter("t2");
   String st3=request.getParameter("st3");
   String ts3=request.getParameter("t3"); 
   
    String adname= (String)session.getAttribute("aname");
   Class.forName("com.mysql.jdbc.Driver");
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
 Statement statement = con.createStatement();
  ResultSet resultset = statement.executeQuery("select mid from m_content where a_name='"+adname+"'");
 String mID = "";
 if(resultset.next()){
	  mID = resultset.getString("mid");
 }
   PreparedStatement st = con.prepareStatement("insert into p_content (s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,mpid) VALUES ('"+st1+"',"+t1+",'"+st2+"',"+t2+",'"+st3+"',"+ts3+","+mID+")");
/*st.setString(1, st1);
st.setString(2, t1);
st.setString(3, st2);
st.setString(4, t2);
st.setString(5, st3);
st.setString(6, ts3);
st.setString(7, mID); */
 out.println("Data is successfully inserted!");
 int i = st.executeUpdate();

    if (i > 0) { %>
        <script language="javascript">
            alert("Register Successfully...")
        </script>
    <%    response.sendRedirect("Provider_data.jsp");
    }

    //ResultSet rs;
%>
