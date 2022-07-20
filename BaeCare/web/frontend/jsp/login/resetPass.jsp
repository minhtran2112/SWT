<%-- 
    Document   : resetPass
    Created on : May 21, 2022, 9:45:27 PM
    Author     : chitung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <!DOCTYPE html>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-grow text-primary m-1" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
                <div class="spinner-grow text-dark m-1" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
                <div class="spinner-grow text-secondary m-1" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Topbar Start -->
            <div class="container-fluid bg-light ps-5 pe-0 d-none d-lg-block">
                <div class="row gx-0">
                    <div class="col-md-6 text-center text-lg-start mb-2 mb-lg-0">
                        <div class="d-inline-flex align-items-center">
                            <small class="py-2"><i class="far fa-clock text-primary me-2"></i>Opening Hours: Mon - Tues : 6.00 am - 10.00 pm, Sunday Closed </small>
                        </div>
                    </div>
                    <div class="col-md-6 text-center text-lg-end">
                        <div class="position-relative d-inline-flex align-items-center bg-primary text-white top-shape px-5">
                            <div class="me-3 pe-3 border-end py-2">
                                <p class="m-0"><i class="fa fa-envelope-open me-2"></i>info@example.com</p>
                            </div>
                            <div class="py-2">
                                <p class="m-0"><i class="fa fa-phone-alt me-2"></i>+012 345 6789</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Topbar End --> 
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
                <a href="index.html" class="navbar-brand p-0">
                    <h1 class="m-0 text-primary"><i class="fa fa-tooth me-2"></i>BaeCare</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="home" class="nav-item nav-link">Home</a>
                        <a href="frontend/assert/about.html" class="nav-item nav-link">About</a>
                        <a href="frontend/assert/service.html" class="nav-item nav-link">Service</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="frontend/assert/price.html" class="dropdown-item">Pricing Plan</a>
                                <a href="frontend/assert/team.html" class="dropdown-item">Our Dentist</a>
                                <a href="frontend/assert/testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="Login" class="dropdown-item active">Login</a>
                            </div>
                        </div>
                        <a href="frontend/assert/contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                    <button type="button" class="btn text-dark" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fa fa-search"></i></button>
                    <a href="Login" class="btn btn-primary py-2 px-4 ms-3">Login</a>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Full Screen Search Start -->
            <div class="modal fade" id="searchModal" tabindex="-1">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                        <div class="modal-header border-0">
                            <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body d-flex align-items-center justify-content-center">
                            <div class="input-group" style="max-width: 600px;">
                                <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                                <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Full Screen Search End -->

            <!-- Hero Start -->
            <div class="container-fluid bg-primary py-5 hero-header mb-5">
                <div class="row py-3">
                    <div class="col-12 text-center">
                        <h1 class="display-3 text-white animated zoomIn">Reset Password</h1>
                        <a href="home" class="h4 text-white">Home</a>
                        <i class="far fa-circle text-white px-2"></i>
                        <a href="Login" class="h4 text-white">Login</a>
                    </div>
                </div>
            </div>
            <!-- Hero End -->

            <!-- Banner Start -->
            <div class="container-fluid banner mb-5" style="margin-top: 90px">
                <div class="container">
                    <div class="row gx-0">
                        <div class="col-lg-4 wow zoomIn" data-wow-delay="0.1s">
                            <div class="bg-primary d-flex flex-column p-5" style="height: 300px;">
                                <h3 class="text-white mb-3">Guaranteed safety</h3>
                                <div class="d-flex justify-content-between text-white mb-3">

                                    <p class="mb-0">Email Registered</p>
                                </div>
                                <div class="d-flex justify-content-between text-white mb-3">

                                    <p class="mb-0"> Enter the correct verification code</p>
                                </div>
                                <div class="d-flex justify-content-between text-white mb-3">

                                    <p class="mb-0"> Gmail only works for 2 minutes</p>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-4 wow zoomIn" data-wow-delay="0.3s">
                            <form action="ResetPass" method="POST">
                                <div class="bg-dark d-flex flex-column p-5" style="height: 300px;">
                                    <h3 class="text-white mb-3">Please Enter Your Email</h3>
                                    <div class="date mb-3" data-target-input="nearest">
                                        <input type="email" name="email" class="form-control bg-light border-0" placeholder="Your Email" style="height: 40px;">
                                        <h5 style="color: #664d03;">${requestScope.notExist}</h5>
                                </div>
                                <button type="submit" class="btn btn-light">Submit</button>
                            </div></form>
                    </div>
                    <div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
                        <div class="bg-secondary d-flex flex-column p-5" style="height: 300px;">
                            <h3 class="text-white mb-3">Pleased to serve you.</h3>
                            <p class="text-white">Customers can contact us directly via the call center.</p>
                            <h2 class="text-white mb-0">+012 345 6789</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Start -->

        <!-- Newsletter Start -->
        <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">
            <div class="container">
                <!--            <div class="bg-primary p-5">
                                <form class="mx-auto" style="max-width: 600px;">
                                    <div class="input-group">
                                        <h4 style="text-align: center">Have Nice Day</h4>
                                    </div>
                                </form>
                            </div>-->
            </div>
        </div>
        <!-- Newsletter End -->
    </body>
    <jsp:include page="../component/bottom.jsp"></jsp:include>

</html>
