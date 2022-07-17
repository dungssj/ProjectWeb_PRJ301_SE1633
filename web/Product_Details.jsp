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
    <title>Document</title>
</head>
<body>
    <section class="vw-100">
        <div class="container-fluid w-100">
            <div class="row container-row p-3 p-lg-5">
                <div class="col-12 col-md-6 img-container px-0">
                    <div class="row">
                        <div class="nav flex-column nav-pills col-2 col-md-3 p-0 d-flex align-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                          <button class="active mb-2 mb-md-4 p-0 ms-md-5" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-1tb-vang-dong-1.jpg" alt="" width="90px" height="90px"></button>
                          <button class="mb-2 mb-md-4 p-0 ms-md-5" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-bac-1.jpg" alt="" width="90px" height="90px"></button>
                          <button class="mb-2 mb-md-4 p-0 ms-md-5" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-xanh-duong-1.jpg" alt="" width="90px" height="90px"></button>
                        </div>
                        <div class="tab-content col-10 col-md-9 p-0" id="v-pills-tabContent">
                          <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-1tb-vang-dong-1.jpg" alt="" class="img-fluid"></div>
                          <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-bac-1.jpg" alt="" class="img-fluid"></div>
                          <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" tabindex="0"><img src="asset/img/product/dien-thoai-iphone-13-pro-max-256gb-xanh-duong-1.jpg" alt="" class="img-fluid"></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 information-container p-0 p-md-2 ps-md-3">
                    <h1>Iphone 13 Pro Max 128GB</h1>
                    <p class="description col-md-10 mb-0 py-2">
                        The iPhone 13 Pro Max is Apple's biggest phone in the lineup with a massive, 6.7" screen that for the first time in an iPhone comes with 120Hz ProMotion display that ensures super smooth scrolling. The benefit of such a gigantic phone is that it also comes with the biggest battery of all iPhone 13 series.
                    </p>
                    <div class="rating-container py-2">
                        <i class="fa-solid fa-star fa-xl check"></i>
                        <i class="fa-solid fa-star fa-xl check"></i>
                        <i class="fa-solid fa-star fa-xl check"></i>
                        <i class="fa-solid fa-star fa-xl check"></i>
                        <i class="fa-solid fa-star fa-xl"></i>
                    </div>
                    <p class="quantity mb-0 py-1">Quantity:</p>
                    <h2 class="py-2 mb-0">Price: 1000$</h2>
                    <button type="button" class="addToCard my-4">ADD TO CART</button>
                    <div class="categories-container">
                        <p class="mb-0">Categories:</p>
                    </div>
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
