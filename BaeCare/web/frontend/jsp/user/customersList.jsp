<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title> Manager - Children Care </title>
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
        <!-- Data Table Css -->
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\datatables.net-bs4\css\dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\pages\data-table\css\buttons.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\datatables.net-responsive-bs4\css\responsive.bootstrap4.min.css">

        <!-- Select 2 css -->
        <link rel="stylesheet" href="..\frontend\assert\libAdmin\bower_components\select2\css\select2.min.css">
        <!-- Multi Select css -->
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\bootstrap-multiselect\css\bootstrap-multiselect.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\bower_components\multiselect\css\multi-select.css">

        <!-- Style.css -->
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\css\style.css">
        <link rel="stylesheet" type="text/css" href="..\frontend\assert\libAdmin\assets\css\jquery.mCustomScrollbar.css">

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
                            <a href="../home">
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
                                            <img src="../${requestScope.account.photo}" style=" width: 50px;height: 50px; object-fit: cover" class="img-radius" alt="User-Profile-Image">
                                            <span>${requestScope.account.name}</span>
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
                                    <div class="page-wrapper">
                                        <!-- Page-header start -->
                                        <div class="page-header">
                                            <div class="row align-items-end">
                                                <div class="col-lg-8">
                                                    <div class="page-header-title">
                                                        <div class="d-inline">
                                                            <h4>Customers List</h4>
                                                            <span>For manager</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="page-header-breadcrumb">
                                                        <ul class="breadcrumb-title">
                                                            <li class="breadcrumb-item">
                                                                <a href="#"> <i class="feather icon-home"></i> </a>
                                                            </li>
                                                            <li class="breadcrumb-item"><a href="#!">Customers List</a>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Page-header end -->

                                        <div class="page-body">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <!-- Individual Column Searching (Text Inputs) start -->
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <h5>Filter Customers</h5>
                                                        </div>


                                                        <div class="card-block">
                                                            <form action="customerslist" method="post">
                                                                <div class="row">
                                                                    <div class="col-sm-12 col-xl-2 m-b-30">
                                                                        <h4 class="sub-title">Gender</h4>
                                                                        <select name="gender" class="form-control">
                                                                            <option ${(requestScope.gender eq "both")?"selected=\"selected\"":"" } value="both">Choose gender</option>
                                                                            <option ${(requestScope.gender eq "male")?"selected=\"selected\"":"" } value="male">Male</option>
                                                                            <option ${(requestScope.gender eq "female")?"selected=\"selected\"":"" } value="female">Female</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-sm-12 col-xl-2 m-b-30">
                                                                        <h4 class="sub-title">Status</h4>
                                                                        <select name="status" class="form-control">
                                                                            <option ${(requestScope.status eq "both")?"selected=\"selected\"":"" } value="both">Choose status</option>
                                                                            <option ${(requestScope.status eq "on")?"selected=\"selected\"":"" } value="on">On</option>
                                                                            <option ${(requestScope.status eq "off")?"selected=\"selected\"":"" } value="off">Off</option>
                                                                        </select>
                                                                    </div>
                                                                    <div class="col-sm-12 col-xl-2 m-b-30">
                                                                        <h4 class="sub-title">Submit</h4>
                                                                        <input type="submit" class="btn btn-primary waves-effect waves-light" value="Submit">
                                                                    </div>
                                                                </div>
                                                            </form>

                                                            <a href="addcustomer" class="btn btn-primary">Create New Customer</a>
                                                            <h4 class="sub-title"></h4>

                                                            <div class="dt-responsive table-responsive">
                                                                <table id="footer-search" class="table table-striped table-bordered nowrap">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Full Name</th>
                                                                            <th>Photo</th>
                                                                            <th>Gender</th>
                                                                            <th>Dob</th>
                                                                            <th>Email</th>
                                                                            <th>Phone</th>
                                                                            <th>Address</th>
                                                                            <th>Status</th>
                                                                            <th></th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach items="${requestScope.listCustomer}" var="c">
                                                                            <tr>
                                                                                <td>${c.name}</td>
                                                                                <td><img src="../${c.photo}" style="width: 70px"></td>
                                                                                <td>
                                                                                    <c:if test="${c.gender eq true}">Male</c:if>
                                                                                    <c:if test="${c.gender eq false}">Female</c:if>
                                                                                </td>
                                                                                <td><fmt:formatDate type = "date" value = "${c.dob}"/></td>
                                                                                <td>${c.email}</td>
                                                                                <td>${c.phone}</td>
                                                                                <td>${c.address}</td>
                                                                                <td>
                                                                                    <c:if test="${c.status eq true}">On</c:if>
                                                                                    <c:if test="${c.status eq false}">Off</c:if>    
                                                                                </td>
                                                                                <td><a href="customerdetails?email=${c.email}">View - </a> 
                                                                                    <a href="editcustomer?email=${c.email}">Edit</a> 
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th>Full Name</th>
                                                                            <td></td>
                                                                            <td></td>
                                                                            <th>Dob</th>
                                                                            <th>Email</th>
                                                                            <th>Phone</th>
                                                                            <th>Address</th>
                                                                            <td></td>
                                                                            <td></td>
                                                                        </tr>
                                                                    </tfoot>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Individual Column Searching (Text Inputs) end -->
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

        <!-- data-table js -->
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net\js\jquery.dataTables.min.js"></script>
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net-buttons\js\dataTables.buttons.min.js"></script>
        <script src="..\frontend\assert\libAdmin\assets\pages\data-table\js\jszip.min.js"></script>
        <script src="..\frontend\assert\libAdmin\assets\pages\data-table\js\pdfmake.min.js"></script>
        <script src="..\frontend\assert\libAdmin\assets\pages\data-table\js\vfs_fonts.js"></script>
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net-buttons\js\buttons.print.min.js"></script>
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net-buttons\js\buttons.html5.min.js"></script>
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net-bs4\js\dataTables.bootstrap4.min.js"></script>
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net-responsive\js\dataTables.responsive.min.js"></script>
        <script src="..\frontend\assert\libAdmin\bower_components\datatables.net-responsive-bs4\js\responsive.bootstrap4.min.js"></script>
        <!-- i18next.min.js -->
        <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\i18next\js\i18next.min.js"></script>
        <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\i18next-xhr-backend\js\i18nextXHRBackend.min.js"></script>
        <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\i18next-browser-languagedetector\js\i18nextBrowserLanguageDetector.min.js"></script>
        <script type="text/javascript" src="..\frontend\assert\libAdmin\bower_components\jquery-i18next\js\jquery-i18next.min.js"></script>
        <!-- Custom js -->
        <script src="..\frontend\assert\libAdmin\assets\pages\data-table\js\data-table-custom.js"></script>

        <script src="..\frontend\assert\libAdmin\assets\js\pcoded.min.js"></script>
        <script src="..\frontend\assert\libAdmin\assets\js\vartical-layout.min.js"></script>
        <script src="..\frontend\assert\libAdmin\assets\js\jquery.mCustomScrollbar.concat.min.js"></script>
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
            function deletePost(id)
            {
                var result = confirm("Are you sure?");
                if (result)
                {
                    window.location.href = "deletepost?id=" + id;
                }
            }
        </script>
    </body>

</html>
