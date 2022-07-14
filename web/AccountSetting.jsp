<%-- 
    Document   : AccountSetting
    Created on : Jul 5, 2022, 10:07:08 AM
    Author     : Dung
--%>

<%@page import="model.User"%>
<%@page import="javafx.scene.web.WebErrorEvent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="asset/style/AccountSetting.css">
    <title>Document</title>
</head>
<body>
    <section class="vh-100">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-10 h-100 p-5">
                    <div class="card h-100 col-md-12 shadow-lg">
                        <div class="d-flex align-items-start h-100 ">
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
                                <div class="col-md-9 content-container py-4 px-5 h-100">
                                        <h2>General Information</h2>
                                        <form action="UpdateInformation" method="get">
                                            <div class="row my-4">
                                                <div class="col-6 mb-3">
                                                    <label>Username</label>
                                                    <input type="text" name="username" value="${user.getUserName()}" class="form-control">
                                                </div>
                                                <div class="col-6 mb-3">
                                                    <label>Phone Number</label>
                                                    <input type="text" name="phonenumber" value="${user.getPhoneNumber()}" class="form-control">
                                                </div>
                                                <div class="col-6 mb-3">
                                                    <label>Email address</label>
                                                    <input type="email" name="email" value="${user.getEmail()}" class="form-control">
                                                </div>
                                                <div class="col-6 mb-3">
                                                    <label>Gender</label>
                                                    <%
                                                        User u = new User();
                                                        if(request.getSession().getAttribute("user") != null) {
                                                            u = (User) request.getSession().getAttribute("user");
                                                        }
                                                        String gender = u.isGender();
                                                        if(gender.equals("Male")) {
                                                    %>
                                                            <select class="form-select form-select" aria-label=".form-select-lg example" name="gender">
                                                                <option value="Male" selected>Male</option>
                                                                <option value="Female">Female</option>
                                                            </select>
                                                    <%
                                                        } else {
                                                            %>
                                                            <select class="form-select form-select" aria-label=".form-select-lg example" name="gender">
                                                                <option value="Male">Male</option>
                                                                <option value="Female" selected="">Female</option>
                                                            </select>
                                                    <%
                                                        }
                                                    %>
                                                </div>
                                                <div class="col-6 mb-3">
                                                    <label>Birthday</label>
                                                    <input type="date" name="dob" value="${user.getDob()}" class="form-control">
                                                </div>
                                            </div>
                                            <h2>Address</h2>
                                            <div class="row my-4">
                                                <div class="col-12 mb-3">
                                                    <label>Address</label>
                                                    <input type="text" name="address" value="${user.getAddress()}" class="form-control" placeholder="Enter your address">
                                                </div>
                                                <div class="col-6 mb-1">
                                                    <label>City</label>
                                                    <input type="text" name="city" value="${user.getCity()}" class="form-control" placeholder="">
                                                </div>
                                                <div class="col-6 mb-1">
                                                    <label>Postcode</label>
                                                    <input type="number" name="postcode" value="${user.getPostcode()}" class="form-control" placeholder="">
                                                </div>
                                            </div>
                                                <input type="submit" class="btn btn-success" value="Save all">
                                        </form>
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
