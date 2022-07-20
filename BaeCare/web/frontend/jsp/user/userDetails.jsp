<%-- 
    Document   : userDetails
    Created on : May 18, 2022, 5:22:19 PM
    Author     : tkoko
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title> Admin - Children Care </title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="#">
    <meta name="keywords" content="flat ui, admin Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="#">
    <!-- Favicon icon -->
    <link rel="icon" href="..\frontend\assert\libAdmin\assets\images\favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\bootstrap\css\bootstrap.min.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\icon\themify-icons\themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\icon\icofont\css\icofont.css">
    <!-- feather Awesome -->
    <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\icon\feather\css\feather.css">
    <!-- Style.css -->
    <link href="../frontend/assert/css/style.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\css\style.css">    

    <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\css\jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="..\frontend\assert\libAdmin\assets\scss\partials\menu\_pcmenu.htm">
</head>

<body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div class='contain'>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">

                    <div class="navbar-logo">
                        <a class="mobile-menu" id="mobile-collapse" href="#!">
                            <i class="feather icon-menu"></i>
                        </a>
                        <a href="index-1.htm">
                            <img class="img-fluid" src="..\frontend\assert\libAdmin\assets\images\logo.png" alt="Theme-Logo">
                            
                        </a>
                        <a class="mobile-options">
                            <i class="feather icon-more-horizontal"></i>
                        </a>
                    </div>

                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-addon search-close"><i class="feather icon-x"></i></span>
                                        <input type="text" class="form-control">
                                        <span class="input-group-addon search-btn"><i class="feather icon-search"></i></span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#!" onclick="javascript:toggleFullScreen()">
                                    <i class="feather icon-maximize full-screen"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-right">
                            <li class="user-profile header-notification">
                                <div class="dropdown-primary dropdown">
                                    <div class="dropdown-toggle" data-toggle="dropdown">
                                        <img src="" class="img-radius" alt="User-Profile-Image">
                                        <span>${requestScope.user.name}</span>
                                        <i class="feather icon-chevron-down"></i>
                                    </div>
                                    <ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                        <li>
                                            <a href="#!">
                                                <i class="feather icon-settings"></i> Settings
                                            </a>
                                        </li>
                                        <li>
                                            <a href="user-profile.htm">
                                                <i class="feather icon-user"></i> Profile
                                            </a>
                                        </li>
                                        <li>
                                            <a href="auth-normal-sign-in.htm">
                                                <i class="feather icon-log-out"></i> Logout
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

           
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="pcoded-navigatio-lavel">Admin</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="navbar-light.htm">
                                        <span class="pcoded-micon"><i class="feather icon-menu"></i></span>
                                        <span class="pcoded-mtext">User List</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Manager</div>
                            <ul class="pcoded-item pcoded-left-item">
                               
                                <li class=" ">
                                    <a href="animation.htm">
                                        <span class="pcoded-micon"><i class="feather icon-aperture rotate-refresh"></i><b>A</b></span>
                                        <span class="pcoded-mtext">Services List</span>
                                    </a>
                                </li>
                                <li class=" ">
                                    <a href="sticky.htm">
                                        <span class="pcoded-micon"><i class="feather icon-cpu"></i></span>
                                        <span class="pcoded-mtext">Posts List</span>
                                    </a>
                                </li>
                                <li class=" ">
                                    <a href="slideController">
                                        <span class="pcoded-micon"><i class="feather icon-aperture rotate-refresh"></i></span>
                                        <span class="pcoded-mtext">Sliders List</span>
                                    </a>
                                </li>
                                
                                 <li class=" ">
                                    <a href="sticky.htm">
                                        <span class="pcoded-micon"><i class="feather icon-aperture rotate-refresh"></i></span>
                                        <span class="pcoded-mtext">Customers List</span>
                                    </a>
                                </li>
                                  <li class=" ">
                                    <a href="sticky.htm">
                                        <span class="pcoded-micon"><i class="feather icon-cpu"></i></span>
                                        <span class="pcoded-mtext">Feedbacks List</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Receptionist</div>
                            <ul class="pcoded-item pcoded-left-item">
                                
                                <li class=" ">
                                    <a href="form-picker.htm">
                                        <span class="pcoded-micon"><i class="feather icon-edit-1"></i></span>
                                        <span class="pcoded-mtext">Reservations List</span>
                                    </a>
                                </li>
                                
                            </ul>
                            <div class="pcoded-navigatio-lavel">Doctors</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="editable-table.htm">
                                        <span class="pcoded-micon"><i class="feather icon-edit"></i></span>
                                        <span class="pcoded-mtext">Medical Examination</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
            <c:if test="${requestScope.user==null}">
            <div class="container" style="margin: 100px">  
                <form id="contactForm" action="details" method="post"  enctype="multipart/form-data">
                    <h3>Form Add User</h3>
                    <fieldset>
                        <input placeholder="Name" type="text" tabindex="1" required autofocus  name="name">
                    </fieldset>
                    <fieldset>
                        <input type="radio" name="gender" value="true" checked="">Male
                        <input type="radio" name="gender" value="false">Female
                    </fieldset>
                    <fieldset>
                        <input placeholder="Email " type="email" tabindex="2" required name="email">
                    </fieldset>
                    <fieldset>
                        <input placeholder="Phone Number (optional)" type="tel" tabindex="3" required name="phone">
                    </fieldset>
                    <fieldset>
                        <input type="text" name="address" placeholder="Address" name="address">
                    </fieldset>
                    <fieldset>
                        <input type="date" name="dob" name="dob">
                    </fieldset>
                    <fieldset>
                        <select name="role">
                            <c:forEach items="${requestScope.roles}" var="r">
                                <option
                                    <c:if test="${r.id eq 5}">
                                        selected ="selected"
                                    </c:if>
                                    value="${r.id}">${r.name}</option>
                            </c:forEach>
                        </select>
                    </fieldset>
                    <fieldset>
                        <select name="status">
                            <option value="true">Activate</option>
                            <option value="false">Don't Activate</option>
                        </select>
                    </fieldset>
                    <fieldset>
                        Photo:<input type="file" name="photo">
                    </fieldset>
                    <fieldset>
                        <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
                    </fieldset>
                </form>
            </div>
        </c:if>
        <c:if test="${requestScope.user!=null}">

            <div class="container" style="margin: 100px">  
                <form id="contactForm" action="details" method="post"  enctype="multipart/form-data">
                    <h3>Form Edit User</h3>
                    <input type="text" value="${requestScope.user.email}" hidden="" name="addeditemail">
                    <fieldset>
                        Name:${requestScope.user.name}
                    </fieldset>
                    <fieldset>
                        Gender:
                        <c:if test="${requestScope.user.gender==true}">
                            Male
                        </c:if> 
                        <c:if test="${requestScope.user.gender==false}">
                            Female
                        </c:if> 
                    </fieldset>
                    <fieldset>
                        Email:${requestScope.user.email}
                    </fieldset>
                    <fieldset>
                        Phone:${requestScope.user.phone}
                    </fieldset>
                    <fieldset>
                        Address:${requestScope.user.address}
                    </fieldset>
                    <fieldset>
                        Dob:${requestScope.user.dob}
                    </fieldset>
                    <fieldset>
                        Role:<select name="role">
                            <c:forEach items="${requestScope.roles}" var="r">
                                <option
                                    <c:if test="${r.name eq requestScope.user.role}">
                                        selected ="selected"
                                    </c:if>
                                    value="${r.id}">${r.name}</option>
                            </c:forEach>
                        </select>
                    </fieldset>
                    <fieldset>
                        Status:<select name="status">
                            <option value="true"
                                    <c:if test="${requestScope.user.status==true}">
                                        selected="selected"
                                    </c:if> 
                                    >Activate</option>
                            <option value="false"
                                    <c:if test="${requestScope.user.status==false}">
                                        selected="selected"
                                    </c:if> 
                                    >Don't Activate</option>
                        </select>
                    </fieldset>
                    <fieldset>
                        <img src="../${requestScope.user.photo}" alt="user_photo" style="width: 100px">
                    </fieldset>
                    <fieldset>
                        <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
                    </fieldset>
                </form>
            </div>
        </c:if>

        <!--  Developed By Yasser Mas -->


                            </div>
                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers
        to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="../files/assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="../files/assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="../files/assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="../files/assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="../files/assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->
    <!-- Required Jquery -->
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\jquery\js\jquery.min.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\jquery-ui\js\jquery-ui.min.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\popper.js\js\popper.min.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\bootstrap\js\bootstrap.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\jquery-slimscroll\js\jquery.slimscroll.js"></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\modernizr\js\modernizr.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\modernizr\js\css-scrollbars.js"></script>

    <!-- i18next.min.js -->
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\i18next\js\i18next.min.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\i18next-xhr-backend\js\i18nextXHRBackend.min.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\i18next-browser-languagedetector\js\i18nextBrowserLanguageDetector.min.js"></script>
    <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\jquery-i18next\js\jquery-i18next.min.js"></script>
    <script src="..\frontend\assert\libAdmin\assets\js\pcoded.min.js"></script>
    <script src="..\frontend\assert\libAdmin\assets\js\vartical-layout.min.js"></script>
    <script src="..\frontend\assert\libAdmin\assets\js\jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Custom js -->
    <script type="text/javascript" src="..\frontend\assert\libAdmin\assets\js\script.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
    
    <script>
        function submitForm() {
            document.getElementById("frmSearch").submit();
        }
    </script>
</body>

    
</html>