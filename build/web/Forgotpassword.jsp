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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="vh-100">
            <div class="container h-100 ">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-10 d-flex justify-content-center align-items-center h-100">
                        <div class="card w-50 h-75 rounded-3">
                            <img src="asset/img/login/girl-with-red-hat-Z6SXt1v5tP8-unsplash.jpg" alt="" class="card-img-top rounded-top" style="object-fit: cover; height: 35%;"> 
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12 pt-4">
                                        <h1 class="text-capitalize text-center fw-bold">Recovery your password</h1>
                                    </div>
                                    <div class="col-12 text-center pt-1">
                                        <p style="font-size: 1.1rem;">Please enter your email to recovery your password</p>
                                    </div>
                                    <form action="">
                                        <div class="col-12 px-4 pt-3">
                                            <input type="text" class="form-control form-control-lg" placeholder= "Enter your email address">
                                        </div>
                                        <div class="col-12 text-center pt-4">
                                            <button class="btn btn-primary m-4" type="submit">Send Email</button>   
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
