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
                    <div class="col-12">

                       
                            <div class="table-content table-responsive">
                                <c:if test="${ cart != null}">
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
                                       
                                        <%
                                            HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) request.getAttribute("cart");
                                            for (Map.Entry<Integer, ProductCart> entry : cart.entrySet()) {
                                                Integer key = entry.getKey();
                                                ProductCart productCart = entry.getValue();

                                        %>
                                        


                                        
                                            <tr>
                                                <td class="product-thumbnail"><a href="shop-details.html"><img src="<%= productCart.product.getImage()%>" alt=""></a></td>
                                                <td class="product-name"><a href="shop-details.html"><%= productCart.product.getProductName()%></a></td>
                                                <td class="product-price"><span class="price"><%= productCart.product.getPrice()%></span></td>
                                            
                                                <td class="product-quantity" >
                                                    <form action="/Projectweb_PRJ301_SE1633/AddToCartServlet/update-amount" method="POST">
                                                    <div class="cart-plus-minus mb-2"><input type="text" name="amount" value="<%= productCart.amount%>"><div class="dec qtybutton">-</div><div class="inc qtybutton">+</div></div>
                                                    <input value="<%=  productCart.product.getProductID()%>" type="hidden" name="ProductId" >
                                                    <button class="btn btn-success" type="submit">Update cart</button>
                                                </form>
                                                    </td>
                                                <td class="product-subtotal"><span class="">$130.00</span></td>
<!--                                                <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>-->
                                            </tr>

                                        
                                        <%}%>

                                    </table>
                                </c:if>
                                <c:if test="${ cart == null}"> 
<!--                                    <div class="alert alert-warning" role="alert"
                                         Chưa có sản phẩm trong giỏ hàng-->
                                     </c:if>
                                <div class="row justify-content-end">
                                    <div class="col-md-5">
                                        <div class="cart-page-total">
                                            <h2>Cart totals</h2>
                                            <ul class="mb-20">
                                                <li>Subtotal <span>$250.00</span></li>
                                                <li>Total <span>$250.00</span></li>
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

