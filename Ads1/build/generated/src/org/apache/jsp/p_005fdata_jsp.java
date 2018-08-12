package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public final class p_005fdata_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");

    
   // String pid = request.getParameter("id");
    String date = request.getParameter("d");
    String dom = request.getParameter("dm");
    String anm = request.getParameter("ad");
    String afile = request.getParameter("adf");    
    String asize= request.getParameter("s");
    String curr = request.getParameter("example");
   String cmp = request.getParameter("cmp");
  String st1=request.getParameter("st1");
   String t1=request.getParameter("t1");
    String st2=request.getParameter("st2");
   String t2=request.getParameter("t2");
   String st3=request.getParameter("st3");
   String ts3=request.getParameter("t3"); 
   // String pid= request.getParameter("id");
   
   Class.forName("com.mysql.jdbc.Driver");
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
   PreparedStatement st = con.prepareStatement("insert into m_content(date,domain,a_name,a_file,a_size,curr,cmp) VALUES ('" + date + "','" + dom + "','" + anm + "','" + afile + "','" + asize+ "','" + curr + "'," + cmp + ")");
// out.println("Data is successfully inserted!");
   st = con.prepareStatement("insert into p_content (s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3) VALUES (?,?,?,?,?,?)");
st.setString(1, st1);
st.setString(2, t1);
st.setString(3, st2);
st.setString(4, t2);
st.setString(5, st3);
st.setString(6, ts3);
 int i=st.executeUpdate();
    if(i>0)
    {
        
      out.write("\n");
      out.write("<script>\n");
      out.write("window.alert(\"Updated Successfully\");\n");
      out.write("</script>\n");

     } //end of if

else
{

      out.write("\n");
      out.write("<script>\n");
      out.write("window.alert(\"DB ERROR .. NOT INSERTED\");\n");
      out.write("</script>\n");

   
    }
    if(i>0)
    {
    response.sendRedirect("Provider_data.jsp");
    }
   String address=null;  
        if(request.getParameter("submit")!= null)  
        {  
            address="Provider_data.jsp";  
        }  

  //java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime()); 
//java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
//st.setDate(1, sqlDate );
/* st.setString(1, pid);
 st.setString(2, date);
st.setString(3, dom);
st.setString(4, anm);
st.setString(5, afile);
st.setString(6, asize);
st.setString(7, curr);
st.setString(8, cmp);*/



      out.write('\n');
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
