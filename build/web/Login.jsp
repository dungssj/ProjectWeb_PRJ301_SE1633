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
        <link rel="stylesheet" href="asset/style/style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
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
                        <form>
                            <input type="text" placeholder="Username"><br>
                            <input type="password" placeholder="Password"><br>
                            <a href="forgot-password.html" id="forgotPass">Forgot Password</a><br>
                            <button type="submit" >Sign In</button>
                            <button ><a href="signup.jsp">Sign Up</a></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
