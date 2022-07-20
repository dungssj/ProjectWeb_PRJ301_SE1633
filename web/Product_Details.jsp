<%-- 
    Document   : Product_Details
    Created on : Jul 17, 2022, 7:51:24 AM
    Author     : Dung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="asset/style/product.css">
        <link rel="stylesheet" href="asset/style/landingpage/LandingPage.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
        <!--Begin Header-->

        <!--Begin Logo-->
    <div class="menu">
        <div id="logo" class="logo float-left">
            <a href="LandingPage" title="logo">
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
            <li class="navbar_link"><a href="#"><i class="glyphicon glyphicon-shopping-cart cart-icon"></i><span
                        class="badge"></span></a></li>
            <li class="navbar_link"><a href="#">
                    <div class="box">
                        <div class="container-1">
                            <span class="icon"><i class="glyphicon glyphicon-search"></i></span>
                        </div>
                    </div>
                </a></li>
            <div class="dropdown">
                <li class="navbar_link"><a href="#" class="nav-dropdown-hover"><i class="glyphicon glyphicon-user"></i></a></li>
                <div class="dropdown-content">
                    <a href="#" class="drop1">Log out</a>
                    <div class="drop_space"></div>
                    <a href="#" class="drop2">Account Setting</a>
                </div>
            </div>
        </ul>
    </div>

    <section class="vw-100">
        <div class="container-fluid w-100">
            <div class="row container-row p-3 p-lg-5">
                <div class="col-12 col-md-7 img-container px-0">
                    <div class="row">
                        <div class="nav flex-column nav-pills col-2 col-md-3 p-0 d-flex align-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <!--                          <button class="active mb-2 mb-md-4 p-0 ms-md-5" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><img src="" alt="" width="90px" height="90px"></button>
                                                      <button class="mb-2 mb-md-4 p-0 ms-md-5" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-bac-1.jpg" alt="" width="90px" height="90px"></button>
                                                      <button class="mb-2 mb-md-4 p-0 ms-md-5" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-xanh-duong-1.jpg" alt="" width="90px" height="90px"></button>-->
                        </div>
                        <div class="tab-content col-10 col-md-9 p-0" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0"><img src="${detail.getImage()}" alt="" class="img-fluid"></div>
                            <!--                          <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-bac-1.jpg" alt="" class="img-fluid"></div>
                                                      <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" tabindex="0"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-xanh-duong-1.jpg" alt="" class="img-fluid"></div>-->
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-5 information-container p-0 p-md-2 ps-md-3">
                    <h1>${detail.getProductName()}</h1>
                    <p class="description col-md-10 mb-0 py-2">
                        ${detail.getDescription()}
                    </p>
                    <!--                    <div class="rating-container py-2">
                                            <i class="fa-solid fa-star fa-xl check"></i>
                                            <i class="fa-solid fa-star fa-xl check"></i>
                                            <i class="fa-solid fa-star fa-xl check"></i>
                                            <i class="fa-solid fa-star fa-xl check"></i>
                                            <i class="fa-solid fa-star fa-xl"></i>
                                        </div>-->
                    <div class="categories-container col-md-10">
                        <p class="mb-0">Availability:${detail.getAmount()}</p>
                    </div>
                    <p class="quantity col-md-10 py-2 mb-0 ">Quantity:<input class="form-control col-3 my-4" value="${detail.getAmount()}" type="number"></p>
                    <h2 class="py-2 mb-0">Price:${detail.getPrice()}</h2>
                    <button type="button" class="addToCard my-4">ADD TO CART</button>

                    <div class="tag-container">
                        <p class="mb-0">Tags:</p>
                    </div>
                    <div class="brandIcon-container w-25 py-3">
                        <ul class="p-0 m-0 d-flex justify-content-between">
                            <li><i class="fa-brands fa-facebook-f"></i></li>
                            <li><i class="fa-brands fa-twitter"></i></li>
                            <li><i class="fa-brands fa-pinterest"></i></li>
                            <li><i class="fa-brands fa-linkedin-in"></i></li>
                            <li><i class="fa-brands fa-google-plus-g"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </section>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
