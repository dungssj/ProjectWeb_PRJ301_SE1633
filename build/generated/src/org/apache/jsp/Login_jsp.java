package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"asset/style/login.css\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/7562df3d9f.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("    <title>Document</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");

        String msg = "";
        if(request.getAttribute("msg") != null) {
            msg = request.getAttribute("msg").toString();
        }
    
      out.write("\r\n");
      out.write("    <section class=\"vh-100\">\r\n");
      out.write("        <div class=\"container py-5 h-100\">\r\n");
      out.write("          <div class=\"row d-flex justify-content-center align-items-center h-100\">\r\n");
      out.write("            <div class=\"col col-xl-10\">\r\n");
      out.write("              <div class=\"card\">\r\n");
      out.write("                <div class=\"row g-0\">\r\n");
      out.write("                  <div class=\"col-md-6 col-lg-5 d-none d-md-block\">\r\n");
      out.write("                    <img src=\"https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80\"\r\n");
      out.write("                      alt=\"login form\" class=\"img-fluid\"/>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-md-6 col-lg-7 d-flex align-items-center\">\r\n");
      out.write("                    <div class=\"card-body p-4 p-lg-5 text-black\">\r\n");
      out.write("      \r\n");
      out.write("                    <form action=\"LoginServlet\" method=\"post\">\r\n");
      out.write("      \r\n");
      out.write("                        <div class=\"d-flex align-items-center mb-3 pb-1\">\r\n");
      out.write("                          <i class=\"fas fa-cubes fa-2x me-3\"></i>\r\n");
      out.write("                          <span class=\"h1 fw-bold mb-0\">Logo</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("      \r\n");
      out.write("                        <h5 class=\"fw-normal mb-3 pb-3\">Sign into your account</h5>\r\n");
      out.write("      \r\n");
      out.write("                        <div class=\"form-outline mb-4\">\r\n");
      out.write("                            <input type=\"text\" id=\"username\" class=\"form-control form-control-lg\" name=\"username\"/>\r\n");
      out.write("                            <label class=\"form-label\" for=\"username\">Username</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("      \r\n");
      out.write("                        <div class=\"form-outline mb-4\">\r\n");
      out.write("                            <input type=\"password\" id=\"password\" class=\"form-control form-control-lg\" name=\"password\"/>\r\n");
      out.write("                            <label class=\"form-label\" for=\"password\">Password</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"mb-2 msgError\">\r\n");
      out.write("                            ");
      out.print(msg);
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"pt-1 mb-4\">\r\n");
      out.write("                            <button class=\"btn btn-dark btn-lg btn-block\" type=\"submit\">Login</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("      \r\n");
      out.write("                        <a class=\"small text-muted\" href=\"Forgotpassword.jsp\">Forgot password?</a>\r\n");
      out.write("                        <p class=\"mb-1 pb-lg-5\" style=\"color: #E0A79E;\">Don't have an account? <a href=\"signup.jsp\"\r\n");
      out.write("                            style=\"color: #E0A79E;\">Register here</a></p>\r\n");
      out.write("                        <a href=\"#!\" class=\"small text-muted\">Terms of use.</a>\r\n");
      out.write("                        <a href=\"#!\" class=\"small text-muted\">Privacy policy</a>\r\n");
      out.write("                      </form>\r\n");
      out.write("      \r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </section>\r\n");
      out.write("</body>\r\n");
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
