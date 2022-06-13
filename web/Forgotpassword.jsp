<%-- 
    Document   : Forgotpassword.jsp
    Created on : Jun 13, 2022, 7:41:51 PM
    Author     : Dung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="asset/style/forgotpass.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="container-pass">
                <div class="container-content">
                    <h1>FORGOT PASSWORD</h1>
                    <p>Please enter your email to change your password</p>
                    <input class="emailInput" type="email" name="email" placeholder="Your e-mail address"><br>
                    <input class="submit btn-grad" type="submit" value="Reset my password">
                </div>
            </div>
        </div>
    </body>
</html>
