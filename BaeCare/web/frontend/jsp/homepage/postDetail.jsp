<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Post - Children Care</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
        <link href="frontend/assert/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="frontend/assert/lib/animate/animate.min.css" rel="stylesheet">
        <link href="frontend/assert/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
        <link href="frontend/assert/lib/twentytwenty/twentytwenty.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="frontend/assert/css/mycss/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="frontend/assert/css/mycss/style.css" rel="stylesheet">
        <!-- NewsBoard CSS  -->
        <link rel="stylesheet" href="frontend/assert/libPost/css/style.css">
        <link rel="stylesheet" href="frontend/assert/libPost/css/widgets.css">
        <link rel="stylesheet" href="frontend/assert/libPost/css/responsive.css">

    </head>
    <body>
        <div class="scroll-progress primary-bg"></div>
        <!-- Start Preloader -->
        <!--     <div class="preloader text-center">
            <div class="circle"></div>
        </div> -->
        <!--Offcanvas sidebar-->
        <aside id="sidebar-wrapper" class="custom-scrollbar offcanvas-sidebar">
            <button class="off-canvas-close"><i class="elegant-icon icon_close"></i></button>
            <form action="post" method="post">
                <div class="sidebar-inner">
                    <div class="input-group w-100">
                        <input name="title" type="text" class="form-control" placeholder="Search Post Title">
                    </div>
                    <!--Categories-->
                    <div class="sidebar-widget widget_categories mb-50 mt-30">
                        <div class="widget-header-2 position-relative">
                            <h5 class="mt-5 mb-15">Category</h5>
                        </div>
                        <div class="widget_nav_menu">
                            <select name="categoryID" class="form-control">
                                <option value="0">Choose category</option>
                                <c:forEach items="${requestScope.listCategory}" var="c">
                                    <option ${(c.id == requestScope.categoryID)?"selected=\"selected\"":"" } value="${c.id}">${c.nameCategory}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <br>
                    </div>
                    <!--Author-->
                    <div class="sidebar-widget widget_categories mb-50 mt-30">
                        <div class="widget-header-2 position-relative">
                            <h5 class="mt-5 mb-15">Author</h5>
                        </div>
                        <div class="widget_nav_menu">
                            <select name="authorID" class="form-control">
                                <option value="0">Choose author</option>
                                <c:forEach items="${requestScope.listAuthor}" var="a">
                                    <option ${(a.id == requestScope.authorID)?"selected=\"selected\"":"" } value="${a.id}">${a.nameAuthor}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <br>
                    <!--Date From-->
                    <div class="sidebar-widget widget_categories mb-50 mt-30">
                        <div class="widget-header-2 position-relative">
                            <h5 class="mt-5 mb-15">Date From</h5>
                        </div>
                        <div class="widget_nav_menu">
                            <input type="date" class="form-control" name="from" value="${requestScope.from}"/>
                        </div>
                    </div>
                    <!--Date To-->
                    <div class="sidebar-widget widget_categories mb-50 mt-30">
                        <div class="widget-header-2 position-relative">
                            <h5 class="mt-5 mb-15">Date To</h5>
                        </div>
                        <div class="widget_nav_menu">
                            <input type="date" class="form-control" name="to" value="${requestScope.to}"/>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary waves-effect waves-light" value="Search">

                </div>
            </form>

        </aside>
        <!-- Start Header -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
            <a href="home" class="navbar-brand p-0">
                <h1 class="m-0 text-primary"><img class="w-25 h-25" src="frontend/assert/img/logo.ico" alt="">BaeCare</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link ">Home</a>
                    <a href="${pageContext.request.contextPath}/slide" class="nav-item nav-link">News</a>
                    <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link ">Service</a>
                    <a href="${pageContext.request.contextPath}/post" class="nav-item nav-link active">Post</a>
                    <a href="${pageContext.request.contextPath}/doctor" class="nav-item nav-link">Doctor</a>
                    <c:if test="${sessionScope.account ne null && sessionScope.account.role.id==5}">
                        <a href="${pageContext.request.contextPath}/Reservation" class="nav-item nav-link">Cart</a>
                        <a href="${pageContext.request.contextPath}/myorder/list" class="nav-item nav-link">Order</a>
                    </c:if>
                    <c:if test="${sessionScope.account.role.id == 1}">
                        <a href="${pageContext.request.contextPath}/user/list" class="nav-item nav-link">Administrator</a>
                    </c:if>
                    <c:if test="${sessionScope.account.role.id == 4}">
                        <a href="${pageContext.request.contextPath}/doctor/exam" class="nav-item nav-link">Examine and Medical</a>
                    </c:if>  
                </div>


                <c:if test="${sessionScope.account eq null}">
                    <a href="login" class="btn btn-primary py-2 px-4 ms-3">Login</a>
                </c:if>
                <c:if test="${sessionScope.account ne null}">
                    <ul class="nav-right">
                        <li class="user-profile header-notification">
                            <div class="dropdown-primary dropdown">
                                <div class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${requestScope.account.photo}" style="width: 50px" class="img-radius" alt="User-Image">
                                    <span>${requestScope.account.name}</span>

                                </div>
                                <ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/changePassword">
                                            <i class="feather icon-settings"></i> Change Password
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/profile">
                                            <i class="feather icon-user"></i> Profile
                                        </a>
                                    </li>


                                </ul>

                            </div>
                        </li>
                    </ul> 
                    <a href="${pageContext.request.contextPath}/logout" class="btn btn-primary py-2 px-4 ms-3">Logout</a>
                </c:if>


            </div>
        </nav>

        <!-- Start Main content -->
        <main class="bg-grey pb-30">
            <div class="container single-content">
                <div class="entry-header entry-header-style-1 mb-50 pt-50">
                    <p class="entry-title mb-50 font-weight-900">
                        ${requestScope.post.postTitle}
                    </p>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="entry-meta align-items-center meta-2 font-small color-muted">
                                <p class="mb-5">
                                    By <a href="#"><span class="author-name font-weight-bold">${requestScope.post.author.nameAuthor}</span></a>
                                </p>
                                <span class="mr-10"> ${requestScope.post.postDate}</span>
                            </div>
                        </div>
                        <div class="col-md-6 text-right d-none d-md-inline">
                            <ul class="header-social-network d-inline-block list-inline mr-15">
                                <li class="list-inline-item text-muted"><span>Category: ${requestScope.post.category.nameCategory}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--end single header-->
                <figure class="image mb-30 m-auto text-center border-radius-10">
                    <img class="border-radius-10" src="${requestScope.post.postImg}" alt="post-title">
                </figure>
                <!--figure-->
                <article class="entry-wraper mb-50">

                    <div class="entry-main-content dropcap wow fadeIn animated">                        

                        <p>${requestScope.post.postDetail}</p>              
                    </div>
                </article>
            </div>
            <!--container-->
        </main>
        <!-- End Main content -->

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light py-5 wow fadeInUp" data-wow-delay="0.3s" style="margin-top: -75px;">
            <div class="container pt-5">
                <div class="row g-5 pt-4">
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Quick Links</h3>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Our Services</a>
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                            <a class="text-light" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Popular Links</h3>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Our Services</a>
                            <a class="text-light mb-2" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                            <a class="text-light" href="#"><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Get In Touch</h3>
                        <p class="mb-2"><i class="bi bi-geo-alt text-primary me-2"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="bi bi-envelope-open text-primary me-2"></i>info@example.com</p>
                        <p class="mb-0"><i class="bi bi-telephone text-primary me-2"></i>+012 345 67890</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Follow Us</h3>
                        <div class="d-flex">
                            <a class="btn btn-lg btn-primary btn-lg-square rounded me-2" href="#"><i class="fab fa-twitter fw-normal"></i></a>
                            <a class="btn btn-lg btn-primary btn-lg-square rounded me-2" href="#"><i class="fab fa-facebook-f fw-normal"></i></a>
                            <a class="btn btn-lg btn-primary btn-lg-square rounded me-2" href="#"><i class="fab fa-linkedin-in fw-normal"></i></a>
                            <a class="btn btn-lg btn-primary btn-lg-square rounded" href="#"><i class="fab fa-instagram fw-normal"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- End Footer -->
        <div class="dark-mark"></div>
        <!-- Vendor JS-->
        <script src="frontend/assert/libPost/js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/popper.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/bootstrap.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.slicknav.js"></script>
        <script src="frontend/assert/libPost/js/vendor/slick.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/wow.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.ticker.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.vticker-min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.scrollUp.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.nice-select.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.magnific-popup.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.sticky.js"></script>
        <script src="frontend/assert/libPost/js/vendor/perfect-scrollbar.js"></script>
        <script src="frontend/assert/libPost/js/vendor/waypoints.min.js"></script>
        <script src="frontend/assert/libPost/js/vendor/jquery.theia.sticky.js"></script>
        <!-- NewsBoard JS -->
        <script src="frontend/assert/libPost/js/main.js"></script>
    </body>

    <!-- Copied from http://demos.alithemes.com/html/stories/demo/home-2.html by Cyotek WebCopy 1.8.0.652, Monday, September 7, 2020, 6:05:35 PM -->
</html>