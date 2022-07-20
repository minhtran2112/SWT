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

        <link href="frontend/assert/libPost/css/post.css" rel="stylesheet" type="text/css"/>
        <script src="frontend/assert/libPost/js/pagger.js" type="text/javascript"></script>

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
                                    <span>${requestScope.acct.name}</span>

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
        <main>       
            <div class="featured-slider-2">
                <div class="featured-slider-2-items">
                    <c:forEach items="${requestScope.listPostNew}" var="a">
                        <div class="slider-single">
                            <div class="post-thumb position-relative">
                                <div class="thumb-overlay position-relative" style="background-image: url(${a.postImg})">
                                    <div class="post-content-overlay">
                                        <div class="container">
                                            <div class="entry-meta meta-0 font-small mb-20">
                                                <a tabindex="0"><span class="post-cat text-info text-uppercase">${a.category.nameCategory}</span></a>

                                            </div>
                                            <h1 class="post-title mb-20 font-weight-900 text-white">

                                                <a class="text-white" href="postDetal?id=${a.postID}" tabindex="0">${a.postTitle}</a>
                                            </h1>
                                            <div class="entry-meta meta-1 font-small text-white mt-10 pr-5 pl-5">
                                                <span class="post-on"><fmt:formatDate type = "date" value = "${a.postDate}"/> </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="container position-relative">
                    <div class="arrow-cover color-white"></div>
                    <div class="featured-slider-2-nav-cover">
                        <div class="featured-slider-2-nav">
                            <c:forEach items="${requestScope.listPostNew}" var="a">
                                <div class="slider-post-thumb mr-15 mt-20 position-relative">
                                    <div class="d-flex hover-up-2 transition-normal">
                                        <div class="post-thumb post-thumb-80 d-flex mr-15 border-radius-5">
                                            <img class="border-radius-5" src="${a.postImg}" alt="">
                                        </div>
                                        <div class="post-content media-body text-white">
                                            <h5 class="post-title mb-15 text-limit-2-row">${a.postTitle}</h5>
                                            <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                <span class="post-on text-white"><fmt:formatDate type = "date" value = "${a.postDate}"/> </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>                                
                        </div>
                    </div>
                </div>
            </div>      

            <div class="bg-grey pt-50 pb-50">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="post-module-3">
                                <div class="widget-header-1 position-relative mb-30">
                                    <h5 class="mt-5 mb-30">Latest posts</h5>
                                </div>
                                <div id="paggertop" class="post_mai"></div><br>
                                <div class="loop-list loop-list-style-1">
                                    <c:forEach items="${requestScope.listPost}" var="a">
                                        <article class="hover-up-2 transition-normal wow fadeInUp animated">
                                            <div class="row mb-40 list-style-2">
                                                <div class="col-md-4">
                                                    <div class="post-thumb position-relative border-radius-5">
                                                        <div class="img-hover-slide border-radius-5 position-relative" style="background-image: url(${a.postImg})">
                                                            <a class="img-link" href="postDetal?id=${a.postID}"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-8 align-self-center">
                                                    <div class="post-content">
                                                        <div class="entry-meta meta-0 font-small mb-10">
                                                            <span class="post-cat text-primary">${a.category.nameCategory}</span></a>
                                                            <span class="post-cat text-primary">${a.author.nameAuthor}</span></a>

                                                        </div>
                                                        <h5 class="post-title font-weight-900 mb-20">
                                                            <a href="postDetal?id=${a.postID}">${a.postTitle}</a>
                                                        </h5>
                                                        <div class="entry-meta meta-1 float-left font-x-small text-uppercase">
                                                            <span class="post-on"><fmt:formatDate type = "date" value = "${a.postDate}"/> </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </c:forEach>   
                                    <div id="paggerbot" class="post_mai"> </div>
                                    <br><br>
                                    <script>
                                        pagger('paggertop', ${requestScope.pageindex},${requestScope.totalpage}, 4);
                                        pagger('paggerbot', ${requestScope.pageindex},${requestScope.totalpage}, 4);
                                    </script>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
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