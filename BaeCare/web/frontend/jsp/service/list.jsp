<%-- 
    Document   : list
    Created on : May 18, 2022, 5:28:27 PM
    Author     : Administrator
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title> Admin - Children Care </title>
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
        <!-- Data Table Css -->
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\datatables.net-bs4\css\dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\assets\pages\data-table\css\buttons.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\datatables.net-responsive-bs4\css\responsive.bootstrap4.min.css">

        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\css\style.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\css\jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="..\frontend\assert\libAdmin\assets\scss\partials\menu\_pcmenu.htm">
    </head>
    <script>
        function submitData() {
            document.getElementById("stt").submit();
        }
    </script>
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
                                        <li class="" >
                                            <a href="${pageContext.request.contextPath}/user/list">
                                                <span class="pcoded-micon"><i class="feather icon-menu"></i></span>
                                                <span class="pcoded-mtext">User List</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="pcoded-navigatio-lavel">Manager</div>
                                    <ul class="pcoded-item pcoded-left-item">

                                        <li class=" " style="background-color:white; color:black;">
                                            <a href="${pageContext.request.contextPath}/service/list">
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
                                        <li class=" " >
                                            <a href="${pageContext.request.contextPath}/slideController" >
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
                                    <div class="page-wrapper">
                                        <!-- Page-header start -->
                                        <div class="page-header">
                                            <div class="row align-items-end">
                                                <div class="col-lg-8">
                                                    <div class="page-header-title">
                                                        <div class="d-inline">
                                                            <h4>Service List</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="page-header-breadcrumb">
                                                        <ul class="breadcrumb-title">
                                                            <li class="breadcrumb-item">
                                                                <a href="index-1.htm"> <i class="feather icon-home"></i> </a>
                                                            </li>
                                                            <li class="breadcrumb-item"><a href="#!">Widget</a> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Page-header end -->
                                        <div class="page-body">

                                            <div class="card">
                                                <div class="card-header">
                                                    <form method="Post" action="list" id="stt" style="display: flex; align-items: center; text-align: center; justify-content: space-around;">
                                                        <input class="w-inherit form-control" style="width: 400px;" type="text" name="searchser" placeholder="Enter any tittle"/>
                                                        <select onchange="submitData()"  name="status" class="my_select form-control">
                                                            <option value="-1"
                                                                    <c:if test="${requestScope.statusSearch eq -1}">
                                                                        selected="selected"
                                                                    </c:if>
                                                                    >All Status</option>
                                                            <option value="1"
                                                                    <c:if test="${requestScope.statusSearch eq 1}">
                                                                        selected="selected"
                                                                    </c:if>
                                                                    >Active</option>
                                                            <option value="0"
                                                                    <c:if test="${requestScope.statusSearch eq 0}">
                                                                        selected="selected"
                                                                    </c:if>
                                                                    >InActive</option>
                                                        </select>
                                                        <select name="serviceT" onchange="submitData()" class="my_select form-control">
                                                            <option value="-1">-----Service Type-----</option>
                                                            <c:forEach var="st" items="${requestScope.types}">
                                                                <option
                                                                    <c:if test="${st.t_id eq requestScope.t_id}">
                                                                        selected="selected"
                                                                    </c:if>
                                                                    value="${st.t_id}">${st.t_name}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <input style="margin-right: 110px;" class="btn btn-primary waves-effect waves-light" type="submit" value="Submit"/>
                                                        
                                                    </form>
                                                    <a href="add"><button class="btn btn-primary waves-effect waves-light">Add Service</button></a>
                                                </div>
                                                <div class="card-block">
                                                    <div class="table-responsive dt-responsive">


                                                        <c:if test="${fn:length(requestScope.list)==0}"> 
                                                            <h4>No Information</h4>
                                                        </c:if>
                                                        <c:if test="${fn:length(requestScope.list)!=0}">
                                                            <table id="multi-table" class="table table-striped table-bordered nowrap table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th></th>
                                                                        <th>Name</th>
                                                                        <th>Service Type</th>
                                                                        <th>Status</th>
                                                                        <th>Price</th>
                                                                        <th>Last Updated</th>
                                                                        <th>Featured</th>
                                                                        <th></th>
                                                                    </tr>
                                                                </thead>
                                                                <tfoot>
                                                                    <tr>
                                                                        <th></th>
                                                                        <th>Name</th>
                                                                        <th>Service Type</th>
                                                                        <th>Status</th>
                                                                        <th>Price</th>
                                                                        <th>Last Updated</th>
                                                                        <th>Featured</th>
                                                                        <th></th>
                                                                    </tr>
                                                                </tfoot>
                                                                <tbody>
                                                                    <c:forEach items="${requestScope.list}" var="se">
                                                                        <tr>
                                                                            <td><img style="width: 50px;" src="../${se.photo}" /></td>
                                                                            <td>${se.sname}</td>
                                                                            <td>${se.st.t_name}</td>
                                                                            <td>${se.status == true?"Active":"InActive"}</td>
                                                                            <td>${se.original_price - se.sale_price}</td>
                                                                            <td>${se.updated_date}</td>
                                                                            <td>${se.details}</td>
                                                                            <td>
                                                                                <a href="edit?sid=${se.sid}">Edit</a>
                                                                                <a href="detail?sid=${se.sid}">
                                                                                    <img src="../frontend/assert/img/eyeicon.png"width="20" alt=""/>
                                                                                </a>
                                                                            </td>
                                                                        </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                            </table>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--                                                </div>
                                                                                        </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
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
<!-- data-table js -->
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net\js\jquery.dataTables.min.js"></script>
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net-buttons\js\dataTables.buttons.min.js"></script>
<script src="..\frontend\assert\assets\pages\data-table\js\jszip.min.js"></script>
<script src="..\frontend\assert\assets\pages\data-table\js\pdfmake.min.js"></script>
<script src="..\frontend\assert\assets\pages\data-table\js\vfs_fonts.js"></script>
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net-buttons\js\buttons.print.min.js"></script>
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net-buttons\js\buttons.html5.min.js"></script>
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net-bs4\js\dataTables.bootstrap4.min.js"></script>
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net-responsive\js\dataTables.responsive.min.js"></script>
<script src="..\frontend\assert\libAdmin\bower_components\datatables.net-responsive-bs4\js\responsive.bootstrap4.min.js"></script>

<!-- modernizr js -->
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

</body>

</html>

