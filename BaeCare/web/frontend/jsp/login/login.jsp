<%-- 
    Document   : Login
    Created on : May 18, 2022, 12:24:11 AM
    Author     : chitung
--%>
<%--Chưa hiển thị được thông báo lỗi --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login - ChildrenCare</title>
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
                <a href="home" class="navbar-brand p-0">
                    <h1 class="m-0 text-primary"><img class="w-25 h-25" src="frontend/assert/img/logo.ico" alt="">BaeCare</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="home" class="nav-item nav-link">Home</a>
                        <a href="service" class="nav-item nav-link">Service</a>

                    </div>
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

            <!-- Hero End -->
        <c:if test="${requestScope.msg ne null}">
            <div style="" class="row text-center">
                <h3 style="color:red">${requestScope.msg}</h3>
            </div>
        </c:if>

        <!-- Appointment Start -->
        <div class="container-fluid bg-primary bg-appointment mb-5 wow fadeInUp" data-wow-delay="0.1s" style="">

            <div class="container">

                <div class="row py-3">
                    <div class="col-12 text-center">
                        <h1 class="display-3 text-white animated zoomIn">Account Login</h1>
                        <a href="" class="h4 text-white">Home</a>
                        <i class="far fa-circle text-white px-2"></i>

                        <a href="login" class="h4 text-white">Login</a>

                    </div>
                </div>

                <div class="row gx-5">
                    <div class="col-lg-3">

                    </div>
                    <div class="col-lg-6">
                        <div class="appointment-form h-100 d-flex flex-column justify-content-center text-center p-5 wow zoomIn" data-wow-delay="0.6s">
                            <form action="login" method="POST">
                                <div class="row g-3">
                                    <div class="col-12 col-sm-6">
                                        <input type="email" name="email" class="form-control bg-light border-0" placeholder="Email" style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="password" name="password" minlength="8" class="form-control bg-light border-0" placeholder="Your Password" style="height: 55px;" required>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="date" id="date1" data-target-input="nearest" class="form-control bg-light border-0">
                                            <a href="ResetPass" class="btn btn-dark w-100 py-3" style="color:white;font-size: 15px;background-color: #040e1e"><u>Forget password</u></a>
                                            <!--                                        <input type="text"
                                                                                        class="form-control bg-light border-0 datetimepicker-input"
                                                                                        placeholder="Appointment Date" data-target="#date1" data-toggle="datetimepicker" style="height: 55px;">-->
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="time" id="time1" data-target-input="nearest" >
                                            <a href="Registration" class="btn btn-dark w-100 py-3" style="color:white;font-size: 15px;background-color: #040e1e"><u>User Registration</u></a>
                                            <!--                                        <input type="text"
                                                                                        class="form-control bg-light border-0 datetimepicker-input"
                                                                                        placeholder="Appointment Time" data-target="#time1" data-toggle="datetimepicker" style="height: 55px;">-->
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <h5 style="color: #664d03;">${requestScope.failed}</h5>
                                        <button class="btn btn-dark w-100 py-3" type="submit">Login</button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3">

                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


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
