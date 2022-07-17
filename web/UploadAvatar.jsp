<%-- 
    Document   : UploadAvatar
    Created on : Jul 16, 2022, 5:35:10 PM
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
    <link rel="stylesheet" href="asset/style/UploadAvatar.css">
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
                                        <img src="asset/img/login/girl-with-red-hat-Z6SXt1v5tP8-unsplash.jpg" alt="">
                                        <div class="img-hover">
                                            <a href="UploadAvatar.jsp"><img src="asset/img/Account/photo.png" alt=""></a>
                                        </div>
                                    </div>
                                    <h6 class="text-center mt-2 mb-4 userName" style="color: white;">${user.getUserName()}</h6>
                                    <ul class="p-0">
                                        <li><a href="AccountSetting.jsp">Account</a></li>
                                        <li><a href="HistoryOrder.jsp">History</a></li>
                                        <li><a href="Security.jsp">Security</a></li>
                                        <li><a href="">Wishlist</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-9 content-container py-4 px-5 h-100">
                                        <h2>Change Your Avatar</h2>
                                        <form action="editAvatar" method="post">
                                            <div class="input-img-container">
                                                <div class="border-img-container">
                                                    <img id="file-upload" src="asset/img/girl-with-red-hat-Z6SXt1v5tP8-unsplash.jpg" alt="">
                                                </div>
                                                <input type="file" onchange="UploadAvatar(this)" name="avatar">
                                            </div>  
                                            <input type="submit" class="btn btn-success" value="Edit avatar">
                                        </form>
                                </div>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script>
        var img = document.getElementById("file-upload");
        var reader = new FileReader();
        function UploadAvatar(target) {
            reader.onload = function (event) {
                img.src = event.target.result;
            };
            reader.readAsDataURL(target.files[0]);
        }
    </script>
</body>
</html>
