<%-- 
    Document   : product
    Created on : Feb 21, 2023, 6:04:08 AM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" content="Free Bootstrap Themes by Zerotheme dot com - Free Responsive Html5 Templates">
        <!--<meta name="author" content="https://www.Zerotheme.com">-->

        <title>TRAVELNET | Always with you on the road</title>

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="../css/bootstrap.min.css"  type="text/css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="../css/style.css">


        <!-- Custom Fonts -->
        <link rel="stylesheet" href="https://cdnj s.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
        <link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css"  type="text/css">
        <link rel="stylesheet" href="../fonts/font-slider.css" type="text/css">

        <!-- jQuery and Modernizr--> 
        <script src="../js/jquery-2.1.1.js"></script>

        <!-- Core JavaScript Files -->  	 
        <script src="../js/bootstrap.min.js"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="js/html5shiv.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }
            label{
                color: black;
            }

            /* Set a style for all buttons */
            button {
                background-color: #04AA6D;
                color: white;
                padding: 11px 22px;
                margin: 2px 0;
                border: none;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the image and position the close button */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
                position: relative;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .container {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;
            }

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 80%; /* Could be more or less, depending on screen size */
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {
                    -webkit-transform: scale(0)
                }
                to {
                    -webkit-transform: scale(1)
                }
            }

            @keyframes animatezoom {
                from {
                    transform: scale(0)
                }
                to {
                    transform: scale(1)
                }
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }
                .cancelbtn {
                    width: 100%;
                }
            }
        </style>
    </head>

    <body>
        <%
       Cookie[] listCookie = request.getCookies();
       String user = "";
       String pass = "";
           int co = 0;
           if(listCookie != null){
       while(co < listCookie.length){
             if(listCookie[co].getName().equals("user")){
              user = listCookie[co].getValue();
       }
             if(listCookie[co].getName().equals("pass")){
              pass = listCookie[co].getValue();
       }
       co++;
       }
       }
        %>
        <!--Top-->
        <nav id="top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <ul class="top-link">
                            <c:if test="${sessionScope.user == null}">
                                <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Login</button>           
                            </c:if>



                            <div id="id01" class="modal">

                                <form class="modal-content animate" action="home" method="post">
                                    <div class="imgcontainer">
                                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                        <img src="img_avatar2.png" alt="Avatar" class="avatar">
                                    </div>

                                    <div class="container">
                                        <label for="uname"><b>Email</b> ${usermessage}</label>
                                        <input type="text" style="color:black;" placeholder="Enter Email" name="email" value="<%out.print(user);%>" required>
                                        <div style="color:red;">${usermessage}</div>
                                        <br>
                                        <label for="psw"><b>Password</b></label>
                                        <input type="password" style="color:black;" placeholder="Enter Password" name="password" value="<%out.print(pass);%>" required>
                                        <span class="show-btn"><i class="fas fa-eye"></i></span>
                                        <div style="color:red;"> ${passmessage}</div> 
                                        <button type="submit">Login</button>

                                        <label>
                                            <input type="checkbox" checked="checked" name="remember"> Remember me
                                            </br>
                                            <span style="color:black;">Do not have an account? <a style="color:black;" href="signup">Sign up now</a></span>
                                        </label>
                                    </div>

                                    <div class="container" style="background-color:#f1f1f1">
                                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                                        <span style="color:black;" class="psw" >Forgot <a style="color:black;" href="reset">password?</a></span>
                                    </div>
                                </form>


                            </div>

                            <script>
                                // Get the modal
                                var modal = document.getElementById('id01');

                                // When the user clicks anywhere outside of the modal, close it
                                window.onclick = function (event) {
                                    if (event.target == modal) {
                                        modal.style.display = "none";
                                    }
                                }
                            </script>
                            <c:if test="${sessionScope.user != null}">
                                <li><span class="glyphicon glyphicon-user"></span> My Account</a>
                                    <ul class="sub-my-account">
                                        <li><a href="../profile/view"> My profile</a></li>
                                        <li><a href="../profile/edit">Edit Profile</a></li>
                                        <li><a href="../mytour">View My Tour</li>
                                        <li><a href="../logout">Log Out</a></li>
                                    </ul>
                                </li>
                            </c:if>
                            <c:if test="${sessionScope.user == null}">
                                <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up </a></li>
                                </c:if>

                            <li><a href="../travelnet/contact"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
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
                        <div id="logo"><img src="../image/Logo/logo.png" /></div>
                    </div>

<!--                    <input type="text" class="input-medium search-query" name="search" 
                           id="myInput" onkeyup="myFunction()"   placeholder="Search hotel here...">  -->


                    <div class="col-md-6" >
                        <form class="form-search" style="display:flex;" action ="searchtour" method="get">  
                            <input  type="text" style="margin-top:2px;" name="search"  id="myInput" onkeyup="myFunction()" placeholder="Enter Keywords?" class="input-medium search-query">
                            <div> 
                                <button style="margin-left:5px; "type="submit" class="glyphicon glyphicon-search"></button>  </div>
                            <div style="margin-left: 30px; margin-top: 20px;"> <a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a> </div>
                        </form>
                    </div>


                    
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
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Category</a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <c:forEach var="o" items="${lstCate}">                                                                              
                                            <li> <a href="listtourbycategory?categoryid=${o.tour_category_id}">${o.tour_category_name}</a></li>
                                            </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <c:if test="${sessionScope.user.role_id == 4}">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Service</a>
                                <div class="dropdown-menu">
                                    <div class="dropdown-inner">
                                        <ul class="list-unstyled">
                                            <li><a href="../hotel/list">Hotel</a></li>
                                            <li><a href="../restaurant/list">Restaurant</a></li>
                                            <li><a href="category.html">Vehicle</a></li>
                                        </ul>
                                    </div> 
                                </div>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.user.role_id == 4}">
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Tour Manager</a>
                                <div class="dropdown-menu" style="margin-left: -203.625px;">
                                    <div class="dropdown-inner">
                                        <ul class="list-unstyled">
                                            <li><a href="create">Create Tour</a></li>
                                            <li><a href="category.html">Edit Tour</a></li>
                                            <li><a href="category.html">Delete Tour</a></li>
                                            <li><a href="category.html">Text 304</a></li>
                                            <li><a href="category.html">Text 305</a></li>
                                        </ul>
                                        <ul class="list-unstyled">
                                            <li><a href="createvoucher">Create Voucher</a></li>
                                            <li><a href="category.html">Edit Voucher</a></li>
                                            <li><a href="category.html">Delete Voucher</a></li>
                                            <li><a href="category.html">Text 309</a></li>
                                            <li><a href="category.html">Text 310</a></li>
                                        </ul>
                                        <ul class="list-unstyled">
                                            <li><a href="cartoverview">Booking Request</a></li>
                                            <li><a href="category.html">Text 312</a></li>
                                            <li><a href="category.html#">Text 313</a></li>
                                            <li><a href="category.html#">Text 314</a></li>
                                            <li><a href="category.html">Text 315</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </c:if>
                        <li><a href="category.html">Hot Fashion</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--//////////////////////////////////////////////////-->
        <!--///////////////////Product Page///////////////////-->
        <!--//////////////////////////////////////////////////-->
        <div id="page-content" class="single-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="category.html">Category</a></li>
                            <li><a href="product.html">Clothes</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div id="main-content" class="col-md-6">
                        <div class="product">
                            <div class="col-md-6">
                                <div class="image">
                                    <center><img style="margin-top: 50px;" src="${requestScope.tr.tour_image}" /></center>
                                    <div class="image-more">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="caption">
                                    <div class="name"><h3>${requestScope.tr.tour_name}</h3></div>
                                    <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                                    <div class="info">
                                        <ul>
                                            <li>Number of day : ${requestScope.tr.number_of_days}</li>
                                            <li>ID: ${requestScope.tr.tour_id}</li>
                                        </ul>
                                    </div>
                                    <div class="price">${requestScope.tr.tour_price}</div>

                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>	
                        <div class="product-desc">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#description">Description</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="description" class="tab-pane fade in active">
                                    <h4>Sample Lorem Ipsum Text</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at ante. Mauris eleifend, quam a vulputate dictum, massa quam dapibus leo, eget vulputate orci purus ut lorem. In fringilla mi in ligula. Pellentesque aliquam quam vel dolor. Nunc adipiscing. Sed quam odio, tempus ac, aliquam molestie, varius ac, tellus. Vestibulum ut nulla aliquam risus rutrum interdum. Pellentesque lorem. Curabitur sit amet erat quis risus feugiat viverra. Pellentesque augue justo, sagittis et, lacinia at, venenatis non, arcu. Nunc nec libero. In cursus dictum risus. Etiam tristique nisl a</p>
                                    <h4>Sample Lorem Ipsum Text</h4>
                                    <p>Sed eget turpis a pede tempor malesuada. Vivamus quis mi at leo pulvinar hendrerit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque aliquet lacus vitae pede. Nullam mollis dolor ac nisi. Phasellus sit amet urna. Praesent pellentesque sapien sed lacus. Donec lacinia odio in odio. In sit amet elit. Maecenas gravida interdum urna. Integer pretium, arcu vitae imperdiet facilisis, elit tellus tempor nisi, vel feugiat ante velit sit amet mauris. Vivamus arcu. Integer pharetra magna ac lacus. Aliquam vitae sapien in nibh vehicula auctor. Suspendisse leo mauris, pulvinar sed, tempor et, consequat ac, lacus. Proin velit. Nulla semper lobortis mauris. Duis urna erat, ornare et, imperdiet eu, suscipit sit amet, massa. Nulla nulla nisi, pellentesque at, egestas quis, fringilla eu, diam.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2 class="title-book-tour"></h2>
                        <br/>
                        <div class="book-content">
                            <div id="book-details-tour">
                                <div class="box-details-tour">
                                    <form name="form2" id="ff2" method="post" action="booking">
                                        <input type="hidden" name="id" value="${requestScope.tr.tour_id}"/>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Name "  name="cus_name" id="cus_name" minlength="5" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address "  name="cus_address" id="cus_address" minlength="5" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Phone "  name="cus_phone" id="cus_phone" pattern="[0][0-9]{9}" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email "  name="cus_email" id="cus_email" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Note "  name="cus_note" id="cus_note" >
                                        </div>
                                    <table class="shopping-cart-table table">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Tour Price:</th>
                                                <th class="text-center">Voucher:</th>
                                                <th class="text-center">Total: </th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="thumb text-center">${requestScope.tr.tour_price}</td>
                                                <td>
                                                    <select id="mySelect"name="mySelect">
                                                        <c:forEach items="${requestScope.voucher}" var="v">
                                                            <option class="voucher" value="${v.voucher_id}">${v.voucher_name}</option>
                                                        </c:forEach>
                                                        <option class="voucher" value="" selected >Choose a voucher</option>

                                                    </select> 
                                                </td>
                                                <td><div type="text" id="price_payment"></div></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                                <button type="submit" class="btn btn-4">Save information</button>
                                    </form>

                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $('#mySelect').on('change', function () {
                                                var id = $(this).val();
                                                var price = '${requestScope.tr.tour_price}';

                                                $.ajax({
                                                    type: "GET",
                                                    url: "/swp391_project_main/payment",
                                                    data: {id: id, price: price},
                                                    success: function (responseText) {
                                                        console.log(responseText);
                                                        $('#price_payment').text(responseText);
                                                    }
                                                });
                                            });
                                        });
                                    </script>


                                </div>
                            </div>
                        </div> <!-- end single content -->
                    </div>
                    <div class="product-related">
                        <div class="products">
                            <div><h4>RELATED PRODUCTS</h4></div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image">
                                        <a href="product.html"><img src="images/clothing_sp19_1.jpg" /></a>
                                        <ul class="buttons">
                                            <li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                                            <li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                                            <li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="caption">
                                        <div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
                                        <div class="price">$122<span>$98</span></div>
                                        <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image">
                                        <a href="product.html"><img src="images/clothing_sp12_1.jpg" /></a>
                                        <ul class="buttons">
                                            <li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                                            <li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                                            <li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="caption">
                                        <div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
                                        <div class="price">$122<span>$98</span></div>
                                        <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image">
                                        <a href="product.html"><img src="images/clothing_sp5_1.jpg" /></a>
                                        <ul class="buttons">
                                            <li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                                            <li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                                            <li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="caption">
                                        <div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></h3></div>
                                        <div class="price">$122<span>$98</span></div>
                                        <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product">
                                    <div class="image">
                                        <a href="product.html"><img src="images/clothing_sp6_1.jpg" /></a>
                                        <ul class="buttons">
                                            <li><a class="btn btn-2 cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
                                            <li><a class="btn btn-2 wishlist" href="#"><span class="glyphicon glyphicon-heart"></span></a></li>
                                            <li><a class="btn btn-2 compare" href="#"><span class="glyphicon glyphicon-transfer"></span></a></li>
                                        </ul>
                                    </div>
                                    <div class="caption">
                                        <div class="name"><h3><a href="product.html">Aliquam erat volutpat</a></div>
                                        <div class="price">$122<span>$98</span></div>
                                        <div class="rating"><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span><span class="glyphicon glyphicon-star-empty"></span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
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
                                Your Store ?? 20xx - Designed by <a href="https://www.Zerotheme.com" target="_blank">Zerotheme</a>
                            </div>
                            <div class="col-md-6">
                                <div class="pull-right">
                                    <ul>
                                        <li><img src="images/visa-curved-32px.png" /></li>
                                        <li><img src="images/paypal-curved-32px.png" /></li>
                                        <li><img src="images/discover-curved-32px.png" /></li>
                                        <li><img src="images/maestro-curved-32px.png" /></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

            <!--            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                    </div>
                                    <div class="modal-body">
                                        ...
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" onclick="chooseStatus(${requestScope.wallet.account_balance},${requestScope.tr.tour_price})">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>-->

            <!-- IMG-thumb -->
            <!--            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">         
                                    <div class="modal-body">                
                                    </div>
                                </div> /.modal-content 
                            </div> /.modal-dialog 
                        </div> /.modal -->

            <!--            <script>
                            $(document).ready(function ()
                            {
                                $(".nav-tabs a").click(function () {
                                    $(this).tab('show');
                                });
                                $('.nav-tabs a').on('shown.bs.tab', function (event) {
                                    var x = $(event.target).text(); // active tab
                                    var y = $(event.relatedTarget).text(); // previous tab
                                    $(".act span").text(x);
                                    $(".prev span").text(y);
                                });
                            });
                        </script>-->
    </body>
</html>
