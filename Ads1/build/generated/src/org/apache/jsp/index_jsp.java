package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" >\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Advertisment</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"materialize.css\">\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function ctck()\n");
      out.write("{\n");
      out.write("var sds = document.getElementById(\"dum\");\n");
      out.write("if(sds == null){alert(\"You are using a free package.\\n You are not allowed to remove the tag.\\n\");}\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script> \n");
      out.write("    <style>\n");
      out.write("h {background-color: powderblue;}\n");
      out.write("\n");
      out.write("p    {color: red;}\n");
      out.write("body {\n");
      out.write("   background-image: url(\"images/wb.png\");\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"blue\">\n");
      out.write("<hp1>      \n");
      out.write("\n");
      out.write("<div id=\"navigation\">\n");
      out.write(" \n");
      out.write("    <b1></b1>\n");
      out.write("    <p id=\"date\">   <hp1>  <center><font size=\"6\"><b><i>   Advertisment Provider\n");
      out.write("            Data Aggregator </i></p></b></font></center></hp1>\n");
      out.write("  \n");
      out.write("\n");
      out.write("     <script>\n");
      out.write("         n =  new Date();\n");
      out.write("y = n.getFullYear();\n");
      out.write("m = n.getMonth() + 1;\n");
      out.write("d = n.getDate();\n");
      out.write("document.getElementById(\"date\").innerHTML = m + \"/\" + d + \"/\" + y;\n");
      out.write("var d = new Date();\n");
      out.write("document.getElementById(\"demo\").innerHTML = d.toDateString();\n");
      out.write("</script>\n");
      out.write("    <div class=\"fish\"><img class=\"fish\" src=\"images/computer-image.png\" /></div> \n");
      out.write("    \t<ul>        \n");
      out.write("      <d>  <li><b><a href=\"index.jsp\">Home</a></b></li>\n");
      out.write("            <li><b><a href=\"about.jsp\">About Us</a></b></li>\n");
      out.write("            <li><b><a href=\"admin.jsp\">ADMINISTRATOR </a></b></li>\n");
      out.write("            <li><b><a href=\"Provider.jsp\">PROVIDER</a></b></li>\n");
      out.write("            <li><b><a href=\"contactus.jsp\">Contact Us</a></b></li></font></d>\n");
      out.write("        </ul>\t\n");
      out.write("        </div>\n");
      out.write("</div>\n");
      out.write("</hp1>\n");
      out.write("<table width=\"960\" border=\"0\" cellspacing=\"10\" cellpadding=\"0\" align=\"center\">\n");
if(request.getAttribute("order")!=null)
			{
			out.print("<table>");
			out.print("<div width='200' align='left'>");
			out.print("<font color='blue'><font size='10'>"+request.getAttribute("order"));
			
			out.print("</div>"); 
			out.print("<table>");
			}
			
			 
      out.write("\n");
      out.write("\t\t\t \n");
      out.write("\t\t\t \n");
      out.write("\n");
      out.write("  <tr align=\"justify\">\n");
      out.write("    <td valign=\"top\" width=\"200px\">\n");
      out.write("    \t<a href=\"https://www.google.com.tw\"><img src=\"images/g.gif\" alt=\"\" border=\"0\" width=\"350\"/> </a> \n");
      out.write("    <h1>google</h1>\n");
      out.write("    \t<p align=\"right\"><a href=\"#\" class=\"more\">View More</a></p>\n");
      out.write("    </td>\n");
      out.write("    <td valign=\"top\">\n");
      out.write("    \t<a href=\"https://www.youtube.com/\"><img src=\"images/youtube.gif\" alt=\"\" border=\"0\"  width=\"350\" /></a>\n");
      out.write("        <h1>YouTube</h1>\n");
      out.write("     \n");
      out.write("        <p align=\"right\"><a href=\"#\" class=\"more\">View More</a></p>\n");
      out.write("    </td>\n");
      out.write("    <td valign=\"top\">\n");
      out.write("    \t<a href=\"https://www.facebook.com/\"><img src=\"images/Facebook.gif\" alt=\"\" border=\"0\"  width=\"200\"/></a>\n");
      out.write("        <h1>Facebook</h1>\n");
      out.write("    \n");
      out.write("        <p align=\"right\"><a href=\"#\" class=\"more\">View More</a></p>\n");
      out.write("    </td>\n");
      out.write("    <td valign=\"top\">\n");
      out.write("    \t<a href=\"https://in.yahoo.com/\"><img src=\"images/Yahoo-UK.png\" alt=\"\" border=\"0\"  width=\"200\"/></a>\n");
      out.write("        <h1>Yahoo</h1>\n");
      out.write("     \n");
      out.write("        <p align=\"right\"><a href=\"#\" class=\"more\">View More</a></p>\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<br>\n");
      out.write("    <br>\n");
      out.write("        <br>\n");
      out.write("  <center> <h1> Designed by Dnyaneshwar Derle,\n");
      out.write("                                  Sawan Londe,\n");
      out.write("                                  Humayun Inamdar</h1></center>\n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<div id=\"footer_top\">\n");
      out.write("  <div id=\"footer_navigation\">\n");
      out.write("  \n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div id=\"footer_copyright\" >\n");
      out.write(" \n");
      out.write("      <center><img  alt=\"business\"  width=\"196\" height=\"106\"></center><br>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
