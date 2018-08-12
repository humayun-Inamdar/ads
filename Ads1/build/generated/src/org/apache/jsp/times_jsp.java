package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.io.*;

public final class times_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <title>Provider data</title>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"materialize.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js\"></script>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("<style type=\"text/css\">\n");
      out.write("html,\n");
      out.write("body {\n");
      out.write("    height: 100%;\n");
      out.write("}\n");
      out.write("html {\n");
      out.write("    display: table;\n");
      out.write("    margin: auto;\n");
      out.write("}\n");
      out.write("body {\n");
      out.write("    background-color:white;\n");
      out.write("  //   background-image: url(\"images/wb.png\");\n");
      out.write("    display: table-cell;\n");
      out.write("    vertical-align: middle;\n");
      out.write("}\n");
      out.write(".margin {\n");
      out.write("  margin: 0 !important;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("   <style>\n");
      out.write("h {background-color: powderblue;}\n");
      out.write("\n");
      out.write("p    {color: red;}\n");
      out.write("body {\n");
      out.write("  // background-image: url(\"images/wb.png\");\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body background=\"images/wb.png\" class=\"blue\">\n");
      out.write("\n");
      out.write("\n");
      out.write(" <div id=\"login-page\" class=\"row\">\n");
      out.write("    <div class=\"col s12 z-depth-6 card-panel\">\n");
      out.write("      <form class=\"login-form\" method=\"post\" action=\"p_data.jsp\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"input-field col s12 center\">\n");
      out.write("            <img src=\"images/alogo.jpg\" alt=\"\" class=\"responsive-img valign profile-image-login\" width=\"800\">\n");
      out.write("            <p class=\"center login-form-text\"><i><b>Import Provider Data</b></i></p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("<a href=\"publish_content.jsp\">Publish Contents</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"row margin\">\n");
      out.write("            <script>\n");
      out.write("  $(document).ready(function() {\n");
      out.write("    $(\"#datepicker\").datepicker();\n");
      out.write("  });\n");
      out.write("  </script>\n");
      out.write("             <script>\n");
      out.write("         n =  new Date();\n");
      out.write("y = n.getFullYear();\n");
      out.write("m = n.getMonth() + 1;\n");
      out.write("d = n.getDate();\n");
      out.write("document.getElementById(\"demo\").innerHTML = y + \"-\" + m + \"-\" +d ;\n");
      out.write("</script>\n");
      out.write(" \n");
      out.write("        <table cellspacing=\"5\" cellpadding=\"3\">\t\n");
      out.write("\t\t\t\t\n");
      out.write("                                    \n");
      out.write("                                       <tr><td><b>Start Time1:</b></td><td> <input type=\"text\" placeholder=\"Enter First Start time\" name=\"st1\" required></td></tr>\n");
      out.write("                                         <tr><td><b>Time1(sec):</b></td><td> <input type=\"text\" placeholder=\"Enter Time in sec\" name=\"t1\" required></td></tr>\n");
      out.write("                                          <tr><td><b>Start Time2:</b></td><td> <input type=\"text\" placeholder=\"Enter second time\" name=\"st2\" required></td></tr>\n");
      out.write("                                           <tr><td><b>Time2(sec):</b></td><td> <input type=\"text\" placeholder=\"Enter Time in sec\" name=\"t2\" required></td></tr>\n");
      out.write("                                            <tr><td><b>Start Time3:</b></td><td> <input type=\"text\" placeholder=\"Enter Third time\" name=\"st3\" required></td></tr>\n");
      out.write("                                             <tr><td><b>Time3(sec):</b></td><td> <input type=\"text\" placeholder=\"Enter Time in sec\" name=\"t3\" required></td></tr>\n");
      out.write("                                              \n");
      out.write("\t\t\t\t\t<tr><td></td><td><input type=\"submit\" name=\"submit\" value=\"Submit\"/>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<INPUT TYPE=RESET VALUE=\"CLEAR\"></td></tr>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <center>\n");
      out.write("    <script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\n");
      out.write("<!-- Post Page - Responsive -->\n");
      out.write("<ins class=\"adsbygoogle\"\n");
      out.write("     style=\"display:inline-block;width:300px;height:250px\"\n");
      out.write("     data-ad-client=\"ca-pub-5104998679826243\"\n");
      out.write("     data-ad-slot=\"3470684978\"></ins>\n");
      out.write("<script>\n");
      out.write("(adsbygoogle = window.adsbygoogle || []).push({});\n");
      out.write("</script>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write(" \n");
      out.write(" <script type=\"text/javascript\" src=\"//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js\"></script>\n");
      out.write("  <!--materialize js-->\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  <script>\n");
      out.write("  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n");
      out.write("  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n");
      out.write("  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n");
      out.write("  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');\n");
      out.write("\n");
      out.write("  ga('create', 'UA-27820211-3', 'auto');\n");
      out.write("  ga('send', 'pageview');\n");
      out.write("\n");
      out.write("</script><script src=\"//load.sumome.com/\" data-sumo-site-id=\"1cf2c3d548b156a57050bff06ee37284c67d0884b086bebd8e957ca1c34e99a1\" async=\"async\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("   <footer class=\"page-footer\">\n");
      out.write("          <div class=\"footer-copyright\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("            © 2018 Open Ads Network\n");
      out.write("         \n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
