<%-- 
    Document   : Welcome.jsp
    Created on : Jun 17, 2022, 11:13:32 AM
    Author     : Dung
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User u = new User();
            if(request.getSession().getAttribute("user") != null) {
                u = (User) request.getSession().getAttribute("user");
            }
        %>
        <h1>Hello <%=u.getUserName()%></h1>
    </body>
</html>
