<%-- 
    Document   : AddToCart
    Created on : Jul 15, 2022, 1:40:44 PM
    Author     : longc
--%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="model.ProductCart"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>AddToCart</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Place favicon.ico in the root directory -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
        <!-- CSS here -->
        <link rel="stylesheet" href="asset/style/shop/bootstrap.css">
        <link rel="stylesheet" href="asset/style/shop/flaticon.css">
        <link rel="stylesheet" href="asset/style/shop/font-awesome-pro.css">
        <link rel="stylesheet" href="asset/style/shop/default.css">
        <link rel="stylesheet" href="asset/style/shop/shop.css">
        <link rel="stylesheet" href="asset/style/landingpage/LandingPage.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
        
    </head>
    <body>
        <!--[if lte IE 9]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->




        <!-- back to top start -->

        <!-- back to top end -->

        <!-- header-start -->


        <!-- cart-area-start -->
        <section class="cart-area pt-120 pb-120">
            <div class="container">

                <div class="row">
                    <div class="col-12">${user.getUserName()}
                       
                            <div class="table-content table-responsive">
                                
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">Images</th>
                                            <th class="cart-product-name">Product</th>
                                            <th class="product-price">Unit Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
<!--                                            <th class="product-remove">Remove</th>-->
                                        </tr>
                                    </thead>
                                    <c:forEach items="${productCartList}" var="productCart">
                                        <tr>
                                            <td class="product-thumbnail"><a href="shop-details.html"><img src="${productCart.getProduct().getImage()}" alt="" width="150px"></a></td>
                                            <td class="product-name"><a href="shop-details.html">${productCart.getProduct().getProductName()}</a></td>
                                            <td class="product-price"><span class="price">${productCart.getProduct().getPrice()}</span></td>

                                            <td class="product-quantity" >
                                                <form action="/Projectweb_PRJ301_SE1633/AddToCartServlet/update-amount" method="POST">
                                                    <div class="cart-plus-minus mb-2"><input type="text" name="amount" value="${productCart.getQuantity()}"><div class="dec qtybutton"><a href="Decrement?id=${productCart.getProduct().getProductID()}">-</a></div><div class="inc qtybutton"><a href="Increment?id=${productCart.getProduct().getProductID()}">+</a></div></div>
                                                <input value="" type="hidden" name="ProductId" >
                                            </form>
                                                </td>
                                            <td class="product-subtotal"><span class="">${productCart.getPrice()}</span></td>
<!--                                                <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>-->
                                        </tr>                                                                            
                                    </c:forEach>
                                </table>

                                <c:if test="${cart == null}"> 
<!--                                    <div class="alert alert-warning" role="alert"
                                         Chưa có sản phẩm trong giỏ hàng-->
                                     </c:if>
                                <div class="row justify-content-end">
                                    <div class="col-md-5">
                                        <div class="cart-page-total">
                                            <h2>Cart totals</h2>
                                            <ul class="mb-20">
                                                <li>Total <span>${totalPrice}</span></li>
                                            </ul>
                                            <a class="tp-btn-h1" href="checkout.html">Proceed to checkout</a>
                                        </div>
                                    </div>
                                </div>
                        
                    </div>
                </div>
            </div>

        </section>
        <!-- cart-area-end -->



    </main>

    <!-- footer-start -->
    <footer class="w-100 py-4 flex-shrink-0">
        <div class="container py-4">
            <div class="row gy-4 gx-5">
                <div class="col-lg-4 col-md-6">
                    <h5 class="h1 text-white">Group 10</h5>
                    <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>

                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-white mb-3">Quick links</h5>
                    <ul class="list-unstyled text-muted">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Get started</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-6">
                    <h5 class="text-white mb-3">Quick links</h5>
                    <ul class="list-unstyled text-muted">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Get started</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6">
                    <h5 class="text-white mb-3">Newsletter</h5>
                    <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                    <form action="#">
                        <div class="input-group mb-3">
                            <input class="form-control" type="text" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                            <button class="btn btn-primary" id="button-addon2" type="button"><i class="fas fa-paper-plane"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </footer>

    <!-- footer-end -->

    <!-- JS here -->

</body>
</html>


