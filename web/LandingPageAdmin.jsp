<%-- 
    Document   : LandingPage
    Created on : Jul 12, 2022, 1:49:04 PM
    Author     : Admin
--%>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
        integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a href="#">HOME</a></li>
            <li class="navbar_link"><a href="#">SHOP</a></li>
            <li class="navbar_link"><a href="#">ABOUT US</a></li>
            <li class="navbar_link"><a href="#">CONTACT US</a></li>
            <li class="navbar_link"><a></a></li>
            <li class="navbar_link"><a href="#"><i class="glyphicon glyphicon-shopping-cart cart-icon"></i><span
                        class="badge">4</span></a></li>
            <li class="navbar_link"><a href="#">
                    <div class="box">
                        <div class="container-1">
                            <span class="icon"><i class="glyphicon glyphicon-search"></i></span>
                        </div>
                    </div>
                </a></li>
                <li class="navbar_link"><a href="FuncOfAdmin" class="nav-dropdown-hover" name="admin"><i class='fas fa-crown'></i></a></li>
        </ul>
    </div>
    <div class="background">
        <img src="asset/img/landingpage/domenico-loia-hGV2TfOh0ns-unsplash.jpg" alt="photo 1">
        <div class="slogan">
            <span><strong>Quality of your life</strong></span>
            <br><br>
            <p>Different - Loyal - Determined</p>
        </div>
    </div>

    <!--End Header-->
</head>

<body>
    <section class="flat-row row-product-new">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-section">
                        <h2 class="title">
                            New Product
                            <h3 class="title_hr"></h3>
                        </h2>
                    </div>
                    <div class="space"></div>
                    <div class="product-content product-fourcolumn clearfix">
                        <ul class="product clearfix">
                            <c:forEach items="${list}" var="item"> 
                                <li class="col-md-3" id="one_space" style="padding: 0">
                                    <div class="product-thumb clearfix">
                                        <a href="#" class="product-thumb">
                                            <img src="${item.getImage()}"
                                                 alt="image" width="100%" height="214px">
                                        </a>
                                        <span class="new"></span>
                                    </div>
                                    <div class="product-info text-center clearfix">
                                        <span class="product-title">${item.getProductName()}</span>
                                        <div class="price">
                                            <del>
                                            <span class="regular"></span>
                                        </del> 
                                            <ins>
                                                <span class="amount">${item.getPrice()}</span>
                                            </ins>
                                        </div>
                                        <div class="color">
                                            <span class="red"></span>  
                                            <span class="blue"></span> 
                                            <span class="green"></span> 
                                        </div>
                                            <div>
                                                <span class="description"><strong></strong></span>
                                            </div>
                                    </div>
                                    <div class="add-to-cart text-center">
                                        <a href="#">ADD TO CART</a>
                                    </div>
                                    <a href="#" class="like"><i class="fa fa-heart-o"></i></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>  
        </div>  
    </section>

    <section class="flat-row row-product-new">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-section">
                        <h2 class="title">
                            Best Seller
                            <h3 class="title_hr"></h3>
                        </h2>
                    </div>
                    <div class="space"></div>
                    <div class="product-content product-fourcolumn clearfix">
                        <ul class="product clearfix">
                            <c:forEach items="${bestseller}" var="item"> 
                                <li class="col-md-3" id="one_space" style="padding: 0">
                                    <div class="product-thumb clearfix">
                                        <a href="#" class="product-thumb">
                                            <img src="${item.getImage()}"
                                                 alt="image" width="100%" height="214px">
                                        </a>
                                        <span class="new"></span>
                                    </div>
                                    <div class="product-info text-center clearfix">
                                        <span class="product-title">${item.getProductName()}</span>
                                        <div class="price">
                                            <del>
                                                <span class="regular"></span>
                                            </del> 
                                            <ins>
                                                <span class="amount">${item.getPrice()}</span>
                                            </ins>
                                        </div>
                                        <div class="color">
                                            <span class="red"></span>  
                                            <span class="blue"></span> 
                                            <span class="green"></span> 
                                        </div>
                                        <div>
                                            <span class="description"><strong></strong></span>
                                        </div>
                                    </div>
                                    <div class="add-to-cart text-center">
                                        <a href="#">ADD TO CART</a>
                                    </div>
                                    <a href="#" class="like"><i class="fa fa-heart-o"></i></a>
                                </li>
                            </c:forEach>
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
<!-- End: Footer -->

</html>
