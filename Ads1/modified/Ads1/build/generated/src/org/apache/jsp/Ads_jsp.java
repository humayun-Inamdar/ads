package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.*;
import java.util.*;

public final class Ads_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

          //   int Adr=4;
        //   int complete=3;
               int fnum=4, snum=3;
                
                 double div=fnum/snum;
             out.println(div);
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
       
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
