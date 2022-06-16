<%-- 
    Document   : Login.jsp
    Created on : Jun 13, 2022, 7:37:35 PM
    Author     : Dung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="asset/style/login.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <%
            String msg = "";
            if(request.getAttribute("msg") != null) {
                msg = request.getAttribute("msg").toString();
            }
        %>
        <div id="login-container">
            <div id="login-content-container">
                <div id="login-content">
                    <p>Sign In</p>
                    <div id="icon-container">
                        <img src="https://img.icons8.com/color/96/undefined/facebook-new.png"/>
                        <img src="https://img.icons8.com/color/96/undefined/twitter--v1.png"/>
                        <img src="https://img.icons8.com/color/96/undefined/facebook-messenger--v1.png"/>
                    </div>
                    <div id="container">
                        <form action="LoginServlet" method="post">
                            <input type="text" placeholder="Username" name="username"><br>
                            <input type="password" placeholder="Password" name="password"><br>
                            <a href="Forgotpassword.jsp" id="forgotPass">Forgot Password</a><br>
                            <div id="msg">
                                <%=msg%>
                            </div> 
                            <button type="submit" >Sign In</button>
                            <button ><a href="signup.jsp">Sign Up</a></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
