package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Forgotpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"asset/style/forgotpass.css\">\r\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <section class=\"vh-100\">\r\n");
      out.write("            <div class=\"container h-100 \">\r\n");
      out.write("                <div class=\"row d-flex justify-content-center align-items-center h-100\">\r\n");
      out.write("                    <div class=\"col-10 d-flex justify-content-center align-items-center h-100\">\r\n");
      out.write("                        <div class=\"card w-50 h-75 rounded-3\">\r\n");
      out.write("                            <img src=\"asset/img/girl-with-red-hat-Z6SXt1v5tP8-unsplash.jpg\" alt=\"\" class=\"card-img-top rounded-top\" style=\"object-fit: cover; height: 35%;\"> \r\n");
      out.write("                            <div class=\"card-body\">\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <div class=\"col-12 pt-4\">\r\n");
      out.write("                                        <h1 class=\"text-capitalize text-center fw-bold\">Recovery your password</h1>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-12 text-center pt-1\">\r\n");
      out.write("                                        <p style=\"font-size: 1.1rem;\">Please enter your email to recovery your password</p>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <form action=\"\">\r\n");
      out.write("                                        <div class=\"col-12 px-4 pt-3\">\r\n");
      out.write("                                            <input type=\"text\" class=\"form-control form-control-lg\" placeholder= \"Enter your email address\">\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-12 text-center pt-4\">\r\n");
      out.write("                                            <button class=\"btn btn-primary m-4\" type=\"submit\">Send Email</button>   \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
