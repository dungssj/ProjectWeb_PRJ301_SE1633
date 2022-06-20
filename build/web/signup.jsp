<%-- 
    Document   : signup.jsp
    Created on : Jun 13, 2022, 7:40:30 PM
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
    <link rel="stylesheet" href="asset/style/signup.css">
    <title>Document</title>
</head>
<body>
    <section class="vh-100">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100 mh-100">
            <div class="col col-xl-10">
              <div class="card">
                <div class="row g-0">
                  <div class="col-md-6 col-lg-5 d-none d-md-block">
                    <img src="https://images.unsplash.com/photo-1601445638532-3c6f6c3aa1d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80"
                      alt="login form" class="img-fluid"/>
                  </div>
                  <div class="col-md-6 col-lg-7 d-flex align-items-center">
                    <div class="card-body p-4 p-lg-5 text-black">
      
                      <form>
                        <h5 class="fs-2 fw-bold mb-3 pb-3">Sign up your information</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="form-outline mb-2">
                                    <input type="text" id="username" class="form-control form-control-lg" />
                                    <label class="form-label" for="username">Username</label>
                                </div>
                            </div>
                                
                            <div class="col-7">
                                <div class="form-outline mb-2">
                                    <input type="email" id="email" class="form-control form-control-lg" />
                                    <label class="form-label" for="email">Email address</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-outline mb-2">
                          <input type="text" id="form2Example27" class="form-control form-control-lg" />
                          <label class="form-label" for="form2Example27">Address</label>
                        </div>
                        
                        <div class="row">
                            <div class="col-6">
                                <div class="form-outline mb-2">
                                    <input type="password" id="pass" class="form-control form-control-lg" />
                                    <label class="form-label" for="pass">Password</label>
                                </div>
                            </div>
                                
                            <div class="col-6">
                                <div class="form-outline mb-2">
                                    <input type="password" id="email" class="form-control form-control-lg" />
                                    <label class="form-label" for="email">Re-enter password</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-outline mb-2">
                                    <input type="text" id="Phonenumber" class="form-control form-control-lg" />
                                    <label class="form-label" for="Phonenumber">Phone number</label>
                                </div>
                            </div>
                                
                            <div class="col-8">
                                <select class="form-select form-select-lg" aria-label=".form-select-lg example">
                                    <option selected>Gender</option>
                                    <option value="1">Male</option>
                                    <option value="2">Female</option>
                                    <option value="3">Other</option>
                                </select>
                            </div>
                        </div>
                    
                        <div class="pt-1 mb-5">
                          <button class="btn btn-dark btn-lg btn-block" type="button">Register</button>
                        </div>
                        <a href="#!" class="small text-muted">Terms of use.</a>
                        <a href="#!" class="small text-muted">Privacy policy</a>
                      </form>
      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
</body>
</html>