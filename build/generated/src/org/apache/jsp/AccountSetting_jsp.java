package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AccountSetting_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("    <link href=\"asset/style/AccountSetting.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    <title>Document</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <section class=\"vh-100\">\n");
      out.write("        <div class=\"container h-100\">\n");
      out.write("            <div class=\"row d-flex justify-content-center align-items-center h-100\">\n");
      out.write("                <div class=\"col-10 h-100 p-5\">\n");
      out.write("                    <div class=\"card h-100 col-md-12\">\n");
      out.write("                        <div class=\"d-flex align-items-start h-100 shadow\">\n");
      out.write("                                <div class=\"navigation col-md-3 h-100\">\n");
      out.write("                                    <div class=\"img-container mt-5 w-100 d-flex justify-content-center\">\n");
      out.write("                                        <img src=\"asset/img/login/girl-with-red-hat-Z6SXt1v5tP8-unsplash.jpg\" class=\"img-fluid\">                                      \n");
      out.write("                                    </div>\n");
      out.write("                                    <h6 class=\"text-center mt-2 mb-4 userName\" style=\"color: white;\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getUserName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h6>\n");
      out.write("                                    <ul class=\"p-0\">\n");
      out.write("                                        <li><a href=\"AccountSetting.jsp\">Account</a></li>\n");
      out.write("                                        <li><a href=\"HistoryOrder.jsp\">History</a></li>\n");
      out.write("                                        <li><a href=\"Security.jsp\">Security</a></li>\n");
      out.write("                                        <li><a href=\"\">Wishlist</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-9 content-container py-4 px-5 h-100\">\n");
      out.write("                                        <h2>General Information</h2>\n");
      out.write("                                        <div class=\"row my-4\">\n");
      out.write("                                            <div class=\"col-6 mb-3\">\n");
      out.write("                                                <label>Username</label>\n");
      out.write("                                                <input type=\"text\" name=\"username\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getUserName()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6 mb-3\">\n");
      out.write("                                                <label>Phone Number</label>\n");
      out.write("                                                <input type=\"text\" name=\"phonenumber\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getPhoneNumber()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6 mb-3\">\n");
      out.write("                                                <label>Email address</label>\n");
      out.write("                                                <input type=\"email\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getEmail()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6 mb-3\">\n");
      out.write("                                                <label>Gender</label>\n");
      out.write("                                                <select class=\"form-select form-select\" id=\"GenderOption\" aria-label=\".form-select-lg example\" name=\"gender\">\n");
      out.write("                                                    <option>Gender</option>\n");
      out.write("                                                    <option value=\"Male\" selected>Male</option>\n");
      out.write("                                                    <option value=\"Female\">Female</option>\n");
      out.write("                                                    <option value=\"Other\">Other</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6 mb-3\">\n");
      out.write("                                                <label>Birthday</label>\n");
      out.write("                                                <input type=\"date\" name=\"dob\" value=\"\" class=\"form-control\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <h2>Address</h2>\n");
      out.write("                                        <div class=\"row my-4\">\n");
      out.write("                                            <div class=\"col-12 mb-3\">\n");
      out.write("                                                <label>Address</label>\n");
      out.write("                                                <input type=\"text\" name=\"address\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getAddress()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"Enter your address\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6 mb-1\">\n");
      out.write("                                                <label>City</label>\n");
      out.write("                                                <input type=\"text\" name=\"city\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getCity()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6 mb-1\">\n");
      out.write("                                                <label>Postcode</label>\n");
      out.write("                                                <input type=\"number\" name=\"postcode\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.getPostcode()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"form-control\" placeholder=\"\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <button class=\"btn btn-dark btn-primary\">Save All</button>\n");
      out.write("                                </div>\n");
      out.write("                          </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\n");
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
