package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"asset/style/signup.css\">\r\n");
      out.write("    <title>Document</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <section class=\"vh-100\">\r\n");
      out.write("        <div class=\"container py-5 h-100\">\r\n");
      out.write("          <div class=\"row d-flex justify-content-center align-items-center h-100 mh-100\">\r\n");
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
      out.write("                      <form>\r\n");
      out.write("                        <h5 class=\"fs-2 fw-bold mb-3 pb-3\">Sign up your information</h5>\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-5\">\r\n");
      out.write("                                <div class=\"form-outline mb-2\">\r\n");
      out.write("                                    <input type=\"text\" id=\"username\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                                    <label class=\"form-label\" for=\"username\">Username</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                \r\n");
      out.write("                            <div class=\"col-7\">\r\n");
      out.write("                                <div class=\"form-outline mb-2\">\r\n");
      out.write("                                    <input type=\"email\" id=\"email\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                                    <label class=\"form-label\" for=\"email\">Email address</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-outline mb-2\">\r\n");
      out.write("                          <input type=\"text\" id=\"form2Example27\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                          <label class=\"form-label\" for=\"form2Example27\">Address</label>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-6\">\r\n");
      out.write("                                <div class=\"form-outline mb-2\">\r\n");
      out.write("                                    <input type=\"password\" id=\"pass\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                                    <label class=\"form-label\" for=\"pass\">Password</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                \r\n");
      out.write("                            <div class=\"col-6\">\r\n");
      out.write("                                <div class=\"form-outline mb-2\">\r\n");
      out.write("                                    <input type=\"password\" id=\"email\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                                    <label class=\"form-label\" for=\"email\">Re-enter password</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-4\">\r\n");
      out.write("                                <div class=\"form-outline mb-2\">\r\n");
      out.write("                                    <input type=\"text\" id=\"Phonenumber\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                                    <label class=\"form-label\" for=\"Phonenumber\">Phone number</label>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                \r\n");
      out.write("                            <div class=\"col-8\">\r\n");
      out.write("                                <select class=\"form-select form-select-lg\" aria-label=\".form-select-lg example\">\r\n");
      out.write("                                    <option selected>Gender</option>\r\n");
      out.write("                                    <option value=\"1\">Male</option>\r\n");
      out.write("                                    <option value=\"2\">Female</option>\r\n");
      out.write("                                    <option value=\"3\">Other</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    \r\n");
      out.write("                        <div class=\"pt-1 mb-5\">\r\n");
      out.write("                          <button class=\"btn btn-dark btn-lg btn-block\" type=\"button\">Register</button>\r\n");
      out.write("                        </div>\r\n");
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
