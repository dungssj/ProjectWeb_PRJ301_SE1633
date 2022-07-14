<%-- 
    Document   : Security
    Created on : Jul 5, 2022, 10:08:18 AM
    Author     : Dung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="asset/style/Security.css">
    <title>Document</title>
</head>
<body>
    <section class="vh-100">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-10 h-100 p-5">
                    <div class="card h-100 col-md-12 shadow-lg">
                        <div class="d-flex align-items-start h-100">
                                <div class="navigation col-md-3 h-100">
                                    <div class="img-container mt-5 w-100 d-flex justify-content-center">
                                        <img src="asset/img/login/girl-with-red-hat-Z6SXt1v5tP8-unsplash.jpg" class="img-fluid">                                                                       
                                    </div>
                                    <h6 class="text-center mt-2 mb-4 userName" style="color: white;">${user.getUserName()}</h6>
                                    <ul class="p-0">
                                        <li><a href="AccountInformation.jsp">Account</a></li>
                                        <li><a href="HistoryOrder.jsp">History</a></li>
                                        <li><a href="Security.jsp">Security</a></li>
                                        <li><a href="#">Wishlist</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-9 content-container py-4 px-5">
                                    <h2 class="my-3">Change Password</h2>
                                    <div class="row" >
                                        <form action="ChangePassword" method="post">
                                            <div class="col-md-8 my-2">
                                                <label for="oldPass">Old Password</label>
                                                <input type="password" name="oldPass" id="oldPass" class="form-control">
                                            </div>
                                            <div class="col-md-8 my-2">
                                                <label for="newPass">New Password</label>
                                                <input type="password" name="newPass" id="newPass" class="form-control">
                                            </div>
                                            <div class="col-md-8 my-2">
                                                <label for="oldPass">Re-enter New Password</label>
                                                <input type="password" name="rePass" id="rePass" class="form-control">
                                            </div>
                                            <input type="submit" value="Save new password" class="btn btn-success my-2">
                                        </form>
                                    </div>
                                </div>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
