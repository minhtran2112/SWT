<%-- 
    Document   : mlist
    Created on : Jun 22, 2022, 4:58:54 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <!-- JS Pager -->
        <script src="../frontend/assert/libAdmin/assets/js/pager.js" type="text/javascript"></script>
        <!-- Style Pager -->
        <link href="../frontend/assert/libAdmin/assets/css/pagerstyle.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            //submit data
            function submit() {
                document.getElementById("sort").submit();
            }
            function deleteFeedback(id)
            {
                var result = confirm("Are you sure?");
                if(result)
                {
                    window.location.href = "delete?id="+id;
                }
            }
        </script>
        <style>
            .checked {
                color: orange;
            }
            .sort-grid{
                display: grid;
                grid-template-columns: 100px 100px 100px 100px;
                grid-template-rows:  100px;
            }
            .sort1{
                grid-column: 1/2;
                grid-row: 1/2;
            }
            .sort2{
                grid-column: 2/3;
                grid-row: 1/2;
            }
        </style>
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
                                    <li class="" >
                                        <a href="${pageContext.request.contextPath}/user/list">
                                            <span class="pcoded-micon"><i class="feather icon-menu"></i></span>
                                            <span class="pcoded-mtext">User List</span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="pcoded-navigatio-lavel">Manager</div>
                                <ul class="pcoded-item pcoded-left-item">

                                    <li class=" ">
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
                                    <li class=" " style="background-color:white; color:black;">
                                        <a href="${pageContext.request.contextPath}/mfeedback/list">
                                            <span class="pcoded-micon"><i class="feather icon-cpu"></i></span>
                                            <span class="pcoded-mtext">Feedback List</span>
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
                                                            <h4>Feedback Manager</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="page-header-breadcrumb">
                                                        <ul class="breadcrumb-title">
                                                            <li class="breadcrumb-item">
                                                                <a href="#"> <i class="feather icon-home"></i> </a>
                                                            </li>
                                                            <li class="breadcrumb-item"><a href="#!">Widget</a> </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Page-header end -->
                                        <!-- Page body start -->
                                        <div class="page-body">

                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <!-- List view card start -->
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <!-- Searching data form Start -->
                                                            <form method="POST" action="list" style="display: flex; align-items: center; text-align: center; justify-content: space-around;">
                                                                <input class="w-inherit form-control" style="width: 400px;" type="text" value="${requestScope.name}" name="searchname" placeholder="Enter any tittle"/>
                                                                <select  name="status" class="my_select form-control">
                                                                    <option value="-1"
                                                                            <c:if test="${requestScope.status eq -1}">
                                                                                selected="selected"
                                                                            </c:if>
                                                                            >All Status</option>
                                                                    <option value="1"
                                                                            <c:if test="${requestScope.status eq 1}">
                                                                                selected="selected"
                                                                            </c:if>
                                                                            >Active</option>
                                                                    <option value="0"
                                                                            <c:if test="${requestScope.status eq 0}">
                                                                                selected="selected"
                                                                            </c:if>
                                                                            >InActive</option>
                                                                </select>
                                                                <select name="service" class="my_select form-control">
                                                                    <option
                                                                        <c:if test="${-1 eq requestScope.sid}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="0">All Service</option>
                                                                    <c:forEach var="s" items="${requestScope.listService}">
                                                                        <option
                                                                            <c:if test="${s.sid eq requestScope.sid}">
                                                                                selected="selected"
                                                                            </c:if>
                                                                            value="${s.sid}">${s.sname}</option>
                                                                    </c:forEach>
                                                                </select>
                                                                <select name="star" class="my_select form-control">
                                                                    <option
                                                                        <c:if test="${-1 eq requestScope.star}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="-1">All Rate</option>
                                                                    <c:forEach var="st" begin="1" end="5" step="1">
                                                                        <option
                                                                            <c:if test="${st eq requestScope.star}">
                                                                                selected="selected"
                                                                            </c:if>
                                                                            value="${st}">${st}</option>
                                                                    </c:forEach>
                                                                </select>
                                                                <input style="margin-right: 110px;" class="btn btn-primary waves-effect waves-light" type="submit" value="Search"/>
                                                            </form>
                                                            <!-- Searching data form End -->
                                                            <!-- Sort data And paging form Start -->
                                                            <form method="POST" action="list" class="sort-grid">
                                                                <!-- Select Column Sort Start -->
                                                                <select name="sort" class="my_select form-control sort1" onchange="submit()" id="sort">
                                                                    <option
                                                                        <c:if test="${'-1' eq requestScope.orderby}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="-1">Order By</option>
                                                                    <option
                                                                        <c:if test="${'u.name' eq requestScope.orderby}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="u.name">Full Name</option>
                                                                    <option
                                                                        <c:if test="${'s.name' eq requestScope.orderby}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="s.name">Service Name</option>
                                                                    <option
                                                                        <c:if test="${'f.star' eq requestScope.orderby}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="f.star">Star</option>
                                                                    <option
                                                                        <c:if test="${'f.status' eq requestScope.orderby}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="f.status">Status</option>
                                                                </select>
                                                                <!-- Select Column Sort End -->
                                                                <select name="sorttype" class="my_select form-control sort2" onchange="submit()" id="sort">
                                                                    <option
                                                                        <c:if test="${'ASC' eq requestScope.sorttype}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="ASC">Ascending</option>
                                                                    <option
                                                                        <c:if test="${'DESC' eq requestScope.sorttype}">
                                                                            selected="selected"
                                                                        </c:if>
                                                                        value="DESC" >Decreasing</option>
                                                                </select>
                                                            </form>

                                                            <!-- Sort data And paging form End -->
                                                        </div>
                                                        <div class="row card-block">
                                                            <div class="col-md-12">
                                                                <ul class="list-view dt-responsive table-responsive">
                                                                    <c:if test="${requestScope.list != null}">
                                                                        <c:forEach items="${requestScope.list}" var="f">
                                                                            <li>
                                                                                <div class="card list-view-media">
                                                                                    <div class="card-block">
                                                                                        <div class="media">
                                                                                            <a class="media-left" href="#">
                                                                                                <img class="media-object card-list-img" src="../${f.fphoto}" width="200px" alt="${f.service.sname}">
                                                                                            </a>
                                                                                            <div class="media-body">
                                                                                                <div class="col-xs-12">
                                                                                                    <h6 class="d-inline-block">
                                                                                                        ${f.user.name}</h6>
                                                                                                    <label class="label label-info">${f.user.role.name}</label>
                                                                                                </div>
                                                                                                <div class="f-13 text-muted m-b-15">
                                                                                                    <label>Service</label>
                                                                                                    ${f.service.sname}
                                                                                                    <br>
                                                                                                    <c:forEach begin="1" end="5" step="1" var="star">
                                                                                                        <c:if test="${star<=f.star}">
                                                                                                            <span class="fa fa-star checked"></span>
                                                                                                        </c:if>
                                                                                                        <c:if test="${star>f.star}">
                                                                                                            <span class="fa fa-star"></span>
                                                                                                        </c:if>
                                                                                                    </c:forEach>
                                                                                                </div>
                                                                                                <p>${f.detail}</p>
                                                                                                <div class="m-t-15">
                                                                                                    <button type="button" data-toggle="tooltip" title="Detail" class="btn btn-twitter btn-mini waves-effect waves-light">
                                                                                                        <a style="color: whitesmoke;" href="detail?fid=${f.fid}">Detail</a>
                                                                                                    </button>
                                                                                                    <button type="button" data-toggle="tooltip" title="Delete" class="btn btn-dribbble btn-mini waves-effect waves-light">
                                                                                                        <a style="color: whitesmoke;" href="#" onclick="deleteFeedback(${f.fid});">Delete</a>
                                                                                                    </button>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </c:forEach>
                                                                    </c:if>
                                                                    <c:if test="${requestScope.list == null}">
                                                                        <h4>No Record to display</h4>
                                                                    </c:if>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- List view card end -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Page-body end -->
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
