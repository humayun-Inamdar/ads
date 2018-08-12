package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.io.*;

public final class new_005fuser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>new_user</title>\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function ctck()\n");
      out.write("{\n");
      out.write("var sds = document.getElementById(\"dum\");\n");
      out.write("if(sds == null){alert(\"You are using a free package.\\n You are not allowed to remove the tag.\\n\");}\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("<SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("function dil(form)\n");
      out.write("{\n");
      out.write("   for(var i=0; i<form.elements.length; i++)\n");
      out.write("   {\n");
      out.write("\t\tif(form.elements[i].value == \"\")\n");
      out.write("\t\t{\n");
      out.write("\t\t   alert(\"Fill out all Fields\")\n");
      out.write("\t\t   document.F1.username.focus()\n");
      out.write("\t\t   return false\n");
      out.write("\t\t}\n");
      out.write("   }\n");
      out.write(" if(!isNaN(document.F1.username.value))\n");
      out.write("   {\n");
      out.write("       alert(\"User Name  must  be  char's & can't be null\")\n");
      out.write("\t   document.F1.username.value=\"\"\n");
      out.write("\t   document.F1.username.focus()\n");
      out.write("\t   return false\n");
      out.write("   }\n");
      out.write("  \n");
      out.write("    if(document.F1.password.value!=document.F1.repassword.value)\n");
      out.write("    {\n");
      out.write("\t   alert(\"Check Confirm PWD\"); \n");
      out.write("\t   document.F1.repassword.value=\"\"\n");
      out.write("\t   document.F1.repassword.focus()\t\n");
      out.write("\t   return false\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t if(!isNaN(document.F1.disname.value))\n");
      out.write("   {\n");
      out.write("       alert(\"DISTRIBUTER NAME  must  be  char's & can't be null\")\n");
      out.write("\t   document.F1.disname.value=\"\"\n");
      out.write("\t   document.F1.disname.focus()\n");
      out.write("\t   return false\n");
      out.write("   }\n");
      out.write("   \n");
      out.write("    if(!isNaN(document.F1.adderess.value))\n");
      out.write("   {\n");
      out.write("       alert(\"adderess field  must  be  char's & can't be null\")\n");
      out.write("\t   document.F1.adderess.value=\"\"\n");
      out.write("\t   document.F1.adderess.focus()\n");
      out.write("\t   return false\n");
      out.write("   }\n");
      out.write("   if(!isNaN(document.F1.cityname.value))\n");
      out.write("   {\n");
      out.write("       alert(\"cityname field  must  be  char's & can't be null\")\n");
      out.write("\t   document.F1.cityname.value=\"\"\n");
      out.write("\t   document.F1.cityname.focus()\n");
      out.write("\t   return false\n");
      out.write("   }\n");
      out.write("\t\n");
      out.write("\t if(!isNaN(document.F1.statename.value))\n");
      out.write("   {\n");
      out.write("       alert(\"statename field  must  be  char's & can't be null\")\n");
      out.write("\t   document.F1.statename.value=\"\"\n");
      out.write("\t   document.F1.statename.focus()\n");
      out.write("\t   return false\n");
      out.write("   }\n");
      out.write("\t\n");
      out.write("\tif(!isNaN(document.F1.phone.value))\n");
      out.write("   {\n");
      out.write("\t   if(document.F1.phone.value >9999999999 )\n");
      out.write("\t   {\n");
      out.write("\t\t alert(\"ye kabhi nhi aayegi\")\n");
      out.write("\t\t document.F1.phone.value=\"\"\n");
      out.write("\t\t document.F1.phone.focus()\n");
      out.write("         return false   \n");
      out.write("\t   }\n");
      out.write("   }\n");
      out.write("   else\n");
      out.write("   {\n");
      out.write("       alert(\"This  field  must  be  number\")\n");
      out.write("\t   document.F1.phone.value=\"\"\n");
      out.write("\t   return false\n");
      out.write("   }\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t  \n");
      out.write("   \n");
      out.write("   \n");
      out.write("\n");
      out.write("   return true   \n");
      out.write("   }\n");
      out.write("</SCRIPT>\n");
      out.write("<style>\n");
      out.write("body {\n");
      out.write("    background-image: url(\"images/wb.png\");\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<div id=\"navigation\">\n");
      out.write("   \n");
      out.write("    <b1></b1>\n");
      out.write("       <hp1>  <center><font size=\"6\"><b><i>   Advertisment Provider\n");
      out.write("            Data Aggregator </i></b></font></center></hp1>\n");
      out.write("    <div class=\"fish\"><img class=\"fish\" src=\"images/computer-image.png\" /></div>\n");
      out.write("    \t<ul>        \n");
      out.write("      <d>  <li><b><a href=\"index.jsp\">Home</a></b></li>\n");
      out.write("            <li><b><a href=\"about.jsp\">About Us</a></b></li>\n");
      out.write("            <li><b><a href=\"admin.jsp\">ADMINISTRATOR </a></b></li>\n");
      out.write("            <li><b><a href=\"Provider.jsp\">PROVIDER</a></b></li>\n");
      out.write("            <li><b><a href=\"contactus.jsp\">Contact Us</a></b></li></font></d>\n");
      out.write("        </ul>\t\n");
      out.write("      \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</hp1>\n");
      out.write("\n");
      out.write("<table width=\"960\" border=\"0\" cellspacing=\"10\" cellpadding=\"0\" align=\"center\">\n");
      out.write("  <tr align=\"justify\">\n");
      out.write("    <td valign=\"top\" width=\"220px\">\n");
      out.write("    \t<a href=\"https://www.google.com.tw\"><img src=\"images/g.gif\" alt=\"\" border=\"0\" width=\"350\"/> <br /> \n");
      out.write("    <h1>google</h1>\n");
      out.write("    \t<p align=\"right\"><a href=\"#\" class=\"more\">View More</a></p>\n");
      out.write("    </td> <td valign=\"top\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<form  onSubmit=\"return dil(this)\" action=\"new_users.jsp\" >\n");
      out.write("\t\t\t\t<h1>  <table cellspacing=\"5\" cellpadding=\"3\">\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr><td>Provider Id:</td><td> <input type=\"text\" placeholder=\"Enter id\" name=\"id\" required></td></tr>\n");
      out.write("\t\t\t\t\t<tr><td>Provider Name:</td><td>  <input type=\"text\" placeholder=\"Enter name\" name=\"nm\" required></td></tr>\n");
      out.write("                                        <tr><td><b>Phone:</b></td><td> <input type=\"text\" placeholder=\"Enter Phone number\" name=\"phn\" required></td></tr>\n");
      out.write("\t\t\t\t\t<tr><td><b>Email</b></td><td> <input type=\"text\" placeholder=\"Enter Email\" name=\"email\" required></td></tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<!-- Gender:<br/><br/>\n");
      out.write("\t\t\t\t\tMale<input type=\"radio\" name=\"gender\" value=\"male\"> Female<input type=\"radio\" name=\"gender\" value=\"female\"/><br/><br/> -->\n");
      out.write("\t\t\t\t\t<tr><td><b>Username:</b></td><td> <input type=\"text\" placeholder=\"Username\" name=\"um\" required></td></tr>\n");
      out.write("\t\t\t\t\t<tr><td><b>Password</b></td><td><input type=\"password\" placeholder=\"Password\" name=\"psw\" required></td></tr>\n");
      out.write("\t\t\t\t\t<tr><td><b>Repeat Password</b</td><td> <input type=\"password\" placeholder=\"Repeat Password\" name=\"rpsw\" required></td></tr>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr><td></td><td><input type=\"submit\" value=\"Submit\"/>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<INPUT TYPE=RESET VALUE=\"CLEAR\"></td></tr>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("               \t\t</form></h1>\n");
      out.write("\t\t\t\t\n");
      out.write("    \t\n");
      out.write("     <td valign=\"top\">\n");
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
      out.write("        <p align=\"right\"><a href=\"#\" class=\"more\">View More</a></p>\n");
      out.write("    </td>\n");
      out.write("    \n");
      out.write("  </tr>\n");
      out.write("  <tr><td colspan=\"4\" style=\"border-bottom:1px solid #CCCCCC;\"></td></tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</body>\n");
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
