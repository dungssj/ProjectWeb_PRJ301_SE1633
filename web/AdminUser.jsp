<%-- 
    Document   : computer
    Created on : Jun 16, 2022, 11:58:49 PM
    Author     : longc
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--       Place favicon.ico in the root directory -->
        <link rel="shortcut icon" type="image/x-icon" href="">
        <!--       CSS here -->
        <link rel="stylesheet" href="asset/style/shop/bootstrap.css">
        <link rel="stylesheet" href="asset/style/shop/flaticon.css">
        <link rel="stylesheet" href="asset/style/shop/font-awesome-pro.css">
        <link rel="stylesheet" href="asset/style/shop/default.css">
        <link rel="stylesheet" href="asset/style/shop/shop.css">
    </head>
    <body>

        <!--     header-start -->
        <header class="header d-blue-bg">
            <div class="header-mid">
                <div class="container">
                    <div class="heade-mid-inner">
                        <div class="row ">
                            <div class=" col-md-6 ">
                                <div class="header__info">
                                    <div class="logo">

                                    </div>
                                </div>
                            </div>

                            <div class=" col-md-6 ">
                                <div class="header-action">


                                    <div class="block-cart action ">
                                        <a class="icon-link" href=".html">
                                            <!--                                    i class="flaticon-shopping-bag"></i>-->
                                            <!--                                    <span class="count">0</span> -->
                                            <span class="text">
                                                <span class="sub"><strong></strong></span>
                                                 </span> 
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </header>
        <!--      header-end -->

        <main>
            <!--         breadcrumb__area-start -->
            <section class="breadcrumb__area box-plr-75">
                <div class="container">
                    <div class="row">
                        <div class="col-xxl-12">
                            <div class="breadcrumb__wrapper">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html"></a>Admin Page</li>
                                        <li class="breadcrumb-item active" aria-current="page">User Management</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--         breadcrumb__area-end -->

            <!--         shop-area-start -->
            <div class="shop-area mb-20">
                <div class="container">
                    <div class="row">

                        <div class="col-xl-12 col-lg-12">

                            <div class="tab-content" id="productGridTabContent">
                                <div class="tab-pane fade  show active" id="FourCol" role="tabpanel" aria-labelledby="FourCol-tab">
                                    <div class="tp-wrapper">
                                        <div class="row g-0">
                                            <c:forEach items="${listUser}" var="o">
                                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                                    <div class="product__item product__item-d">
                                                        <div class="product__thumb fix">
                                                            <div class="product-image w-img">
                                                                <>
                                                            </div>

                                                        </div>
                                                        <div class="product__content-3">
                                                            <h6><a href="product-.html">${o.getUserName()}</a></h6>

                                                            <div class="price mb-10">
                                                                <span>${o.getPrice()}</span>
                                                            </div>
                                                        </div>
                                                        <div class="product__add-cart-s text-center">
                                                            <button type="button" class="cart-btn d-flex mb-10 align-items-center justify-content-center w-100">
                                                                <a href="Edit?id=${item.getProductID()}&mode=edit">Edit</a>
                                                            </button>
                                                            <button type="button" class="cart-btn d-flex mb-10 align-items-center justify-content-center w-100">
                                                                <a href="Edit?id=${item.getProductID()}&mode=delete">Delete</a>
                                                            </button>

                                                        </div>
                                                    </div>

                                                </div>
                                            </c:forEach> 



                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tp-pagination text-center">
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12">

                                        <ul class="pagination">
                                            <c:if test="${tag > 1}">
                                            <li class="page-item"><a href="FuncOfAdminServlet?index=${tag-1}" class="page-link"><<</a></li>
                                            </c:if>
                                                <c:forEach begin="${1}" end="${endP}" var="i">
                                                <li class="page-item ${tag == i?"active":""}"><a href="FuncOfAdminServlet?index=${i}" class="page-link">${i}</a></li>
                                                </c:forEach>
                                                <c:if test="${tag < endP}">
                                            <li class="page-item"><a href="FuncOfAdminServlet?index=${tag+1}" class="page-link">>></a></li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--         shop-area-end -->



        </main>

        <!--     footer-start -->
        <footer class="w-100 py-4 flex-shrink-0">
            <div class="container py-4">
                <div class="row gy-4 gx-5">
                    <div class="col-lg-4 col-md-6">
                        <h5 class="h1 text-black">Group 10</h5>
                        <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>

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

        <!--     footer-end -->

        <!--       JS here 
        -->      
    </body>
</html>
