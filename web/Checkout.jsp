<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="asset/style/landingpage/LandingPage.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!--Begin Header-->

        <!--Begin Logo-->
    <div class="menu">
        <div id="logo" class="logo float-left">
            <a href="index.html" title="logo">
                <img src="asset/img/landingpage/logo.png" alt="image" width="107" height="24" data-retina=""C:\Users\Admin\Downloads\modaz-minimalist-ecommerce-html-template-2022-02-21-23-53-38-utc\modaz-package\modaz\images\logo@2x.png""
                     data-width="107" data-height="24">
            </a>
        </div>
        <!--End Logo-->

        <ul class="nav">
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a href="LandingPage">HOME</a></li>
            <li class="navbar_link"><a href="ListProduct">SHOP</a></li>
            <li class="navbar_link"><a href="#">ABOUT US</a></li>
            <li class="navbar_link"><a href="#">CONTACT US</a></li>
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a href="AddToCart"><i class="glyphicon glyphicon-shopping-cart cart-icon"></i><span
                        class="badge"></span></a></li>
            <li class="navbar_link"><a href="#">
                    <div class="box">
                        <div class="container-1">
                            <span class="icon"><i class="glyphicon glyphicon-search"></i></span>
                        </div>
                    </div>
                </a></li>
            <div class="dropdown">
                <li class="navbar_link"><a href="#" class="name-dropdown-hover" ></a>${user.getUserName()}<i class="glyphicon glyphicon-user"></i></li>
                <div class="dropdown-content">
                    <a href="logout" class="drop1">Log out</a>
                    <div class="drop_space"></div>
                    <a href="Account" class="drop2">Account Setting</a>
                </div>
            </div>
        </ul>
    </div>
    <!--End Header-->
</head>

<body>
    <section class="flat-row row-product-new">
        <div class="container">
            <div class="row">
                <div>
                    <div class="title-section">
                        <h2 class="title">
                            Check Out 
                            <h3 class="title_hr"></h3>
                        </h2>
                    </div>
                    <div class="space"></div>
                    <div><input type="text" name="address" style="width: 100%"></div>
                    <div class="product-content product-fourcolumn clearfix">
                        <ul class="product clearfix">
                            <c:forEach items="${sessionScope.listCart}"  var="item"> 
                                <li id="one_space" class="col-md-12">
                                    <div class="col-md-4">
                                        <div class="product-thumb clearfix">
                                            <a href="#" class="product-thumb">
                                                <img src="${item.getProduct().getImage()}"
                                                     alt="image" width="100%" height="214px">
                                            </a>
                                            <span class="new"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="product-info text-center clearfix" style="padding-top: 48%">
                                            <span class="product-title">${item.getProduct().getProductName()}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="price" style="padding-top: 48%">
                                            <ins>
                                                <span class="amount">${item.getProduct().getPrice()}</span>
                                            </ins>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                            <div>
                                <span class="totalmoney"> <c:forEach items="${sessionScope.listCart}"  var="item">
                                        Total Money: ${item.getProduct().getPrice()}
                                </c:forEach></span>
                            </div>
                            <div>
                                <button class="checkout" style="border: none">Check Out</button>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>  
        </div>  
    </section>
</body>
<!-- Begin: Footer -->
<footer class="w-100 py-4 flex-shrink-0">
    <div class="container py-4">
        <div class="row gy-4 gx-5">
            <div class="col-lg-4 col-md-6">
                <h5 class="h1 text-black">Group 10</h5>
                <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt.</p>
                <p class="small text-muted mb-0">&copy; Copyrights. All rights reserved. <a class="text-primary"
                                                                                            href="#">Bootstrapious.com</a></p>
            </div>
            <div class="col-lg-2 col-md-6">
                <h5 class="text-black mb-3">Quick links</h5>
                <ul class="list-unstyled text-muted">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Get started</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-6">
                <h5 class="text-black mb-3">Quick links</h5>
                <ul class="list-unstyled text-muted">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Get started</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-6">
                <h5 class="text-black mb-3">Newsletter</h5>
                <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt.</p>
                <form action="#">
                    <div class="input-group mb-3">
                        <input class="form-control" type="text" placeholder="Recipient's username"
                               aria-label="Recipient's username" aria-describedby="button-addon2">
                        <button class="btn btn-primary" id="button-addon2" type="button"><i
                                class="fas fa-paper-plane"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</footer>
</html>
