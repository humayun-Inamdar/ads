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

public final class publish_005fcontent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" >\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>P_contents</title>\n");
      out.write("  \n");
      out.write("  <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write(" \n");
      out.write("     <link href=\"report.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("h {background-color: powderblue;}\n");
      out.write("\n");
      out.write("p    {color: red;}\n");
      out.write("body {\n");
      out.write("   background-image: url(\"images/wb.png\");\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  ");
 
              Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select p_content.pc_id,date,domain,a_file,a_size,p_content.s_time1,p_content.time_sec1,p_content.s_time2,p_content.time_sec2,p_content.s_time3,p_content.time_sec3,p_content.Ad_request,p_content.Bilable_impression,p_content.count,cmp,p_content.fill_Rate from p_content,m_content") ; 
        
      out.write("\n");
      out.write(" <br>\n");
      out.write("\t\t\t<center><h1>Publish Content</h1></center><br>\n");
      out.write("\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t <th>Publish content ID</th>\n");
      out.write("                                                          <th>Date</th>\n");
      out.write("                                                         <th>Domain</th>\n");
      out.write("                                                         <th>Advertise File</th>\n");
      out.write("                                                         <th>advertise Size</th>\n");
      out.write("                                                         <th>Start Time1 </th>\n");
      out.write("                                                         <th>Time sec1</th>\n");
      out.write("                                                          <th>Start Time2 </th>\n");
      out.write("                                                         <th>Time sec2</th>\n");
      out.write("                                                          <th>Start Time3 </th>\n");
      out.write("                                                         <th>Time sec3</th>\n");
      out.write("                                                          <th>Ad Requests</th>\n");
      out.write("                                                          <th>Billable Impressions Delivered </th>\n");
      out.write("                                                           <th>Counts</th>\n");
      out.write("                                                         <th>Ad_CMP </th>\n");
      out.write("                                                        \n");
      out.write("                                                         <th>Fill Rate(%)</th>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("                                                  <thead>\n");
      out.write("                                                ");
 while(resultset.next()){ 
      out.write("\n");
      out.write("                                                 <tbody>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t  <td> ");
      out.print( resultset.getString(1) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(2) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(3) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(4) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(5) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(6) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(7) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(8) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(9) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(10) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(11) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(12) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(13) );
      out.write("</td>\n");
      out.write("                                                          <td> ");
      out.print( resultset.getString(14) );
      out.write("</td>\n");
      out.write("                                                           <td> ");
      out.print( resultset.getString(15) );
      out.write("</td>\n");
      out.write("                                                           <td> ");
      out.print( resultset.getString(16) );
      out.write("</td>\n");
      out.write("                                                      \n");
      out.write("\t\t\t\t\t\t</tr> ");
 } 
      out.write("\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t  </tbody>\n");
      out.write("                         </table>\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
