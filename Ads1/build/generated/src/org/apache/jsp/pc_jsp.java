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

public final class pc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <script>\n");
      out.write("      function pay()\n");
      out.write("      {\n");
      out.write("          var a=document.querySelectorAll(\"input[type=checkbox][name=chk]\");\n");
      out.write("          var l=a.length;\n");
      out.write("         // alert(l);\n");
      out.write("          //alert(a.value);\n");
      out.write("          for(i=0;i<l;i++)\n");
      out.write("          {\n");
      out.write("            if(a[i].checked==true)\n");
      out.write("            {\n");
      out.write("                alert(a[i].value);\n");
      out.write("            }\n");
      out.write("          }\n");
      out.write("      }\n");
      out.write("      function onlyone(checkbox)\n");
      out.write("      {\n");
      out.write("        //  alert(checkbox.value);\n");
      out.write("          sessionStorage.setItem(\"id\",checkbox.value);\n");
      out.write("          window.location=\"http://localhost:8080/Ads1/publush_content.html\";    \n");
      out.write("            \n");
      out.write("           /* c.foreach((item)=>\n");
      out.write("                  {\n");
      out.write("                      if(item!== checkbox) item.checked=false\n");
      out.write("                 \n");
      out.write("          })*/\n");
      out.write("      }\n");
      out.write("      </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  ");
 
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
            resultset = statement.executeQuery("select a_name,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,curr,cmp,mid from m_content ");
         /* String aname = "";
 if(resultset.next()){
	 aname = resultset.getString("a_name");
 }
                 resultset =  statement.executeQuery("select pc_id,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,Ad_request,Bilable_impression,count,cmp,fill_Rate from p_content,m_content") ;*/ 
        
      out.write("\n");
      out.write(" <br>\n");
      out.write("\t\t\t<center><h1>Publish Content</h1></center><br>\n");
      out.write("\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<th> Advertise name</th>\n");
      out.write("                                                          <th>Advertise Request</th>\n");
      out.write("                                                          <th>Completed Reduests</th>\n");
      out.write("                                                           <th>Count</th>\n");
      out.write("                                                         <th>Fill Rate(%)</th>\n");
      out.write("                                                        \n");
      out.write("                                                         <th>Payment</th>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("                                                  <thead>\n");
      out.write("                                                ");
 while(resultset.next()){ 
      out.write("\n");
      out.write("                                                 <tbody>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td> ");
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
      out.write("                                                         <td> ");
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
      out.write("                                                          <td><input type=\"checkbox\" name=\"chk\" value=\"");
      out.print( resultset.getInt(14));
      out.write("\" id=\"chk\" onclick=\"onlyone(this)\" /></td>\n");
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
