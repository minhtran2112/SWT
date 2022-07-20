<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

        <!DOCTYPE html>
        <html lang="en">

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
            <link rel="icon" href="frontend\assert\libAdmin\assets\images\favicon.ico" type="image/x-icon">
            <!-- Google font-->
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
            <!-- Required Fremwork -->
            <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\bower_components\bootstrap\css\bootstrap.min.css">
            <!-- themify-icons line icon -->
            <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\assets\icon\themify-icons\themify-icons.css">
            <!-- ico font -->
            <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\assets\icon\icofont\css\icofont.css">
            <!-- feather Awesome -->
            <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\assets\icon\feather\css\feather.css">
            <!-- Style.css -->
            <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\assets\css\style.css">
            <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\assets\css\jquery.mCustomScrollbar.css">
            <link rel="stylesheet" href="frontend\assert\libAdmin\assets\scss\partials\menu\_pcmenu.htm">
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
                                    <img class="img-fluid" src="frontend\assert\libAdmin\assets\images\logo.png" alt="Theme-Logo">

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
                                        <li class=" " style="background-color:white; color:black;">
                                            <a href="${pageContext.request.contextPath}/slideController" style="background-color:white; color:black;">
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
                                <div class="pcoded-inner-content container-fluid">

                                    <div class="slider-demo row">
                                        <div class="col-lg-12">

                                            <div class="card col-lg-12">
                                                <div class="card-body" style="position: relative;">
                                                    <form id="addSlideForm" class="form-group" action="slideController" method="post" enctype="multipart/form-data">
                                                        <label for="sImg">Slide Image:</label>
                                                        <input required style="margin-bottom:10px;" accept="image/png, image/gif, image/jpeg" class="form-control form-control-file" type="file" name="sImg" id="sImg" placeholder="Slide Image">
                                                        <input required style="margin-bottom:10px;" class="form-control" type="text" name="sTitle" id="" placeholder="Slide Title">


                                                        <textarea class="form-control" aria-label="With textarea" name="sDetail" placeholder="Slide Details"></textarea>

                                                        <div style="margin-bottom:10px;" class="form-control">
                                                            <input type="checkbox" id="sOnHomepage" name="sOnHomepage" value="true" checked>
                                                            <label class="custom-control-label" for="sOnHomepage">Show on homepage</label>
                                                        </div>


                                                        <input type="hidden" name="method" value="add">
                                                        <button form="addSlideForm" type="submit" class="btn btn-primary form-control">Add Slide</button>
                                                    </form>


                                                </div>
                                            </div>

                                        </div>
                                        <c:forEach items="${requestScope.listSlide}" var="s" begin="${slideStart}" end="${slideEnd}">
                                            <div class="col-lg-4">
                                                <div class="card col-lg-12">

                                                    <img class="card-img-top" style="object-fit: cover; height: 210px;" src="${s.slideImg}" alt="Card image cap">

                                                    <div class="card-body">
                                                        <form enctype="multipart/form-data" action="slideController" id="slideEditForm${s.slideID}" method="post">
                                                            <label for="sImg">Slide Image:</label>
                                                            <input value="${s.slideImg}" style="margin-bottom:10px;" accept="image/png, image/gif, image/jpeg" class="form-control form-control-file" type="file" name="sImg" id="sImg">
                                                            <input required style="margin-bottom:10px;" class="form-control" type="text" name="sTitle" id="" value="${s.slideTitle}" placeholder="Slide Title">
                                                            <input required style="margin-bottom:10px;" class="form-control" type="text" name="sDetail" id="" value="${s.slideDetail}" placeholder="Slide Details">
                                                            <input type="hidden" name="sID" value="${s.slideID}">
                                                            <input type="hidden" name="page" value="${page}">
                                                            <input type="hidden" name="method" value="upd">
                                                            <input type="hidden" name="sOnHomepage" value="${s.onHomepage}">
                                                            <!-- <input type="submit" value="Update"> -->
                                                        </form>


                                                        <div class="row">
                                                            <button form="slideEditForm${s.slideID}" type="submit" class="btn btn-primary col-4">Update</button>
                                                            <a href="slideController?method=del&sID=${s.slideID}&page=${page}" class="btn btn-danger col-4">Delete</a>
                                                            <c:if test="${s.onHomepage == true}">
                                                                <a href="slideController?method=dis&sID=${s.slideID}&page=${page}" class="btn btn-secondary col-4 ">Disable</a>
                                                            </c:if>
                                                            <c:if test="${s.onHomepage==false}">
                                                                <a href="slideController?method=enb&sID=${s.slideID}&page=${page}" class="btn btn-success col-4 ">Enable</a>
                                                            </c:if>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>

                                        </c:forEach>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-2"></div>
                                        <div class="col-lg-8" style="text-align: center;">
                                            <a class="btn btn-primary" href="slideController?page=${1}">Start</a>
                                            <c:if test="${page-2 >0}">
                                                <a class="btn btn-primary" href="slideController?page=${page-2}">${page-2}</a>
                                            </c:if>
                                            <c:if test="${page-1 >0}">
                                                <a class="btn btn-primary" href="slideController?page=${page-1}">${page-1}</a>
                                            </c:if>

                                            <a class="btn btn-dark" href="slideController?page=${page}">${page}</a>
                                            <c:if test="${page+1 <=totalPage}">
                                                <a class="btn btn-primary" href="slideController?page=${page+1}">${page+1}</a>
                                            </c:if>
                                            <c:if test="${page+2 <=totalPage}">
                                                <a class="btn btn-primary" href="slideController?page=${page+2}">${page+2}</a>
                                            </c:if>

                                            <a class="btn btn-primary" href="slideController?page=${totalPage}">End</a>
                                        </div>
                                        <div class="col-lg-2"></div>
                                    </div>

                                </div>


                                <div id="styleSelector ">

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
<div class="ie-warning ">
<h1>Warning!!</h1>
<p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers
to access this website.</p>
<div class="iew-container ">
<ul class="iew-download ">
<li>
<a href="http://www.google.com/chrome/ ">
    <img src="../files/assets/images/browser/chrome.png " alt="Chrome ">
    <div>Chrome</div>
</a>
</li>
<li>
<a href="https://www.mozilla.org/en-US/firefox/new/ ">
    <img src="../files/assets/images/browser/firefox.png " alt="Firefox ">
    <div>Firefox</div>
</a>
</li>
<li>
<a href="http://www.opera.com ">
    <img src="../files/assets/images/browser/opera.png " alt="Opera ">
    <div>Opera</div>
</a>
</li>
<li>
<a href="https://www.apple.com/safari/ ">
    <img src="../files/assets/images/browser/safari.png " alt="Safari ">
    <div>Safari</div>
</a>
</li>
<li>
<a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie ">
    <img src="../files/assets/images/browser/ie.png " alt=" ">
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
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\jquery\js\jquery.min.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\jquery-ui\js\jquery-ui.min.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\popper.js\js\popper.min.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\bootstrap\js\bootstrap.min.js "></script>
            <!-- jquery slimscroll js -->
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\jquery-slimscroll\js\jquery.slimscroll.js "></script>
            <!-- modernizr js -->
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\modernizr\js\modernizr.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\modernizr\js\css-scrollbars.js "></script>

            <!-- i18next.min.js -->
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\i18next\js\i18next.min.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\i18next-xhr-backend\js\i18nextXHRBackend.min.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\i18next-browser-languagedetector\js\i18nextBrowserLanguageDetector.min.js "></script>
            <script type="text/javascript " src="frontend\assert\libAdmin\bower_components\jquery-i18next\js\jquery-i18next.min.js "></script>
            <script src="frontend\assert\libAdmin\assets\js\pcoded.min.js "></script>
            <script src="frontend\assert\libAdmin\assets\js\vartical-layout.min.js "></script>
            <script src="frontend\assert\libAdmin\assets\js\jquery.mCustomScrollbar.concat.min.js "></script>
            <!-- Custom js -->
            <script type="text/javascript " src="frontend\assert\libAdmin\assets\js\script.js "></script>

            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async=" " src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13 "></script>
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