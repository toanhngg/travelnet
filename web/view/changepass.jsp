<%-- 
    Document   : account
    Created on : Feb 18, 2023, 11:01:53 PM
    Author     : anhth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Free Bootstrap Themes by Zerotheme dot com - Free Responsive Html5 Templates">
        <meta name="author" content="https://www.Zerotheme.com">

        <title>Fashion Shop | Free Bootstrap Themes by Zerotheme.com</title>


        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="./css/bootstrap.min.css"  type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="./css/style.css">


        <!-- Custom Fonts -->
        <link rel="stylesheet" href="./font-awesome/css/font-awesome.min.css"  type="text/css">
        <link rel="stylesheet" href="./fonts/font-slider.css" type="text/css">

        <!-- jQuery and Modernizr--> 
        <script src="./js/jquery-2.1.1.js"></script>

        <!-- Core JavaScript Files -->  	 
        <script src="./js/bootstrap.min.js"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="js/html5shiv.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
        <script>
                    function checkPasswordMatch() {
                    var password = document.getElementById("newpassword");
                    var confirm_password = document.getElementById("renewpassword");
                    var message = document.getElementById("password_match");
                    if (password.value != confirm_password.value) {
                    message.innerHTML = "Passwords do not match";
                    confirm_password.setCustomValidity("Passwords do not match");
                    } else {
                    message.innerHTML = "";
                    confirm_password.setCustomValidity("");
                    }
                    }
                    
                    function checkEmailExist() {
                    var email = document.geElementById("email");
                    var confirm_email = '${sessionScope.user.email}';
                    var message = document.getElementById("email_match");
                    if (email.value != confirm_email.value) {
                    message.innerHTML = "Email not exist";
                    confirm_email.setCustomValidity("Email not exist");
                    } else {
                    message.innerHTML = "";
                    confirm_email.setCustomValidity("");
                    }
                    }
                    
                    function checkPasswordExist() {
                    var old_password = document.geElementById("old_password");
                    var old_password1 = '${sessionScope.user.password}';
                    var message = document.getElementById("old_match");
                    if (old_password.value != old - password1.value) {
                    message.innerHTML = "Password is not correct";
                    old_password1.setCustomValidity("Password is not correct");
                    } else {
                    message.innerHTML = "";
                    old_password1.setCustomValidity("");
                    }
                    }
                </script>
    <body>
        <!--Top-->
        <nav id="top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <select class="language">
                            <option value="English" selected>English</option>
                            <option value="France">France</option>
                            <option value="Germany">Germany</option>
                        </select>
                        <select class="currency">
                            <option value="USD" selected>USD</option>
                            <option value="EUR">EUR</option>
                            <option value="DDD">DDD</option>
                        </select>
                    </div>
                    <div class="col-xs-6">
                        <ul class="top-link">
                            <li><a href="account.html"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
                            <li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!--Header-->
        <header >
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div id="logo"><img src="images/logo.png" /></div>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="phone"><span class="glyphicon glyphicon-earphone"></span>0123-456-789</div>
                        <div class="mail"><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</div>
                        <form class="form-search">  
                            <input type="text" class="input-medium search-query">  
                            <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
                        </form>
                    </div>
                    <div id="cart"><a class="btn btn-cart" href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>CART<strong>0</strong></a></div>
                </div>
            </div>
        </header>
        <!--Navigation-->
        <nav id="menu" class="navbar">
            <div class="container">
                <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Women Fashion</a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Text 101</a></li>
                                        <li><a href="category.html">Text 102</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Men Fashion</a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Text 201</a></li>
                                        <li><a href="category.html">Text 202</a></li>
                                        <li><a href="category.html">Text 203</a></li>
                                        <li><a href="category.html">Text 204</a></li>
                                        <li><a href="category.html">Text 205</a></li>
                                    </ul>
                                </div> 
                            </div>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Kids Fashion</a>
                            <div class="dropdown-menu" style="margin-left: -203.625px;">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Text 301</a></li>
                                        <li><a href="category.html">Text 302</a></li>
                                        <li><a href="category.html">Text 303</a></li>
                                        <li><a href="category.html">Text 304</a></li>
                                        <li><a href="category.html">Text 305</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Text 306</a></li>
                                        <li><a href="category.html">Text 307</a></li>
                                        <li><a href="category.html">Text 308</a></li>
                                        <li><a href="category.html">Text 309</a></li>
                                        <li><a href="category.html">Text 310</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="category.html">Text 311</a></li>
                                        <li><a href="category.html">Text 312</a></li>
                                        <li><a href="category.html#">Text 313</a></li>
                                        <li><a href="category.html#">Text 314</a></li>
                                        <li><a href="category.html">Text 315</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li><a href="category.html">New Fashion</a></li>
                        <li><a href="category.html">Hot Fashion</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--Navigation-->
        <div class="col-md-8">
            <div class="heading"><h2>Change password.</h2></div>
            <form name="form" method="post" action="changepass" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="Email" name="email" id="email" onchange="checkEmailExist()"required>
                    <div id="email_match"></div>
                </div>
                <div class="form-group">
                    <input param="value" type="password" class="form-control" minlength="5" placeholder="Password" name="old_password" id="old-password" onchange="checkPasswordExist()" required>
                    <div id="old_match"></div>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="New Password " minlength="5"  name="newpassword" id="newpassword" onchange="checkPasswordMatch()" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Re New Password " minlength="5" name="renewpassword" id="renewpassword" onchange="checkPasswordMatch()" required>
                    <div id="password_match"></div>
                </div>    

                <button type="submit" class="btn btn-4">Change</button>
            </form>
        </div>

        <!--//////////////////////////////////////////////////-->
        <!--///////////////////Account Page///////////////////-->
        <!--//////////////////////////////////////////////////-->
        <div id="page-content" class="single-page">
            <div class="container">

        

             </div>
        </div>
    <footer>
        <div class="brand">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-xs-6">
                        <a href="#"><img src="images/brand1-250x100.jpg" /></a>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                        <a href="#"><img src="images/brand2-250x100.jpg" /></a>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                        <a href="#"><img src="images/brand1-250x100.jpg" /></a>
                    </div>
                    <div class="col-lg-3 col-xs-6">
                        <a href="#"><img src="images/brand4-250x100.jpg" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="top-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-right">
                        <h4>Subcribe Email</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    </div>
                    <div class="col-md-6">
                        <form name="subcribe-email" action="subcribe.php">
                            <div class="subcribe-form form-group">
                                <input class="form-inline" type="text" name="email" value="1"><button href="#" class="btn btn-4" type="submit">Subcribe</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="wrap-footer">
                <div class="row">
                    <div class="col-md-3 col-footer footer-1">
                        <img src="images/logofooter.png" />
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    </div>
                    <div class="col-md-3 col-footer footer-2">
                        <div class="heading"><h4>Customer Services</h4></div>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Delivery Information</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-footer footer-3">
                        <div class="heading"><h4>My Account</h4></div>
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Brands</a></li>
                            <li><a href="#">Gift Vouchers</a></li>
                            <li><a href="#">Specials</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 col-footer footer-4">
                        <div class="heading"><h4>Contact Us</h4></div>
                        <ul>
                            <li><span class="glyphicon glyphicon-home"></span>California, United States 3000009</li>
                            <li><span class="glyphicon glyphicon-earphone"></span>+91 8866888111</li>
                            <li><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        Your Store ? 20xx - Designed by <a href="https://www.Zerotheme.com" target="_blank">Zerotheme</a>
                    </div>
                    <div class="col-md-6">
                        <div class="pull-right">
                            <ul>
                                <li><img src="../image/Logo/logo.png" /></li>
                                <li><img src="../image/Logo/logo.png" /></li>
                                <li><img src="../image/Logo/logo.png" /></li>
                                <li><img src="../image/Logo/logo.png" /></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>	 
</body>
</html>