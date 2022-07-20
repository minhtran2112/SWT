<%-- 
    Document   : order
    Created on : Jul 3, 2022, 5:03:55 PM
    Author     : chitung
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../component/top.jsp"></jsp:include>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
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
                        <a href="home" class="nav-item nav-link active">Home</a>
                        <a href="#" class="nav-item nav-link">About</a>
                        <a href="#" class="nav-item nav-link">Service</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu m-0">
                                <a href="frontend/price.html" class="dropdown-item">Pricing Plan</a>
                                <a href="frontend/team.html" class="dropdown-item">Our Dentist</a>
                                <a href="frontend/testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="frontend/login.html" class="dropdown-item">Appointment</a>
                            </div>
                        </div>
                        <a href="#" class="nav-item nav-link">Contact</a>
                    </div>
                    <ul class="nav-right">
                        <li class="user-profile header-notification">
                            <div class="dropdown-primary dropdown">
                                <div class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${requestScope.user.photo}" style="width: 50px" class="img-radius" alt="User-Profile-Image">
                                <span>${requestScope.user.name}</span>

                            </div>
                            <ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                <li>
                                    <a href="changePassword">
                                        <i class="feather icon-settings"></i> Change Password
                                    </a>
                                </li>
                                <li>
                                    <a href="profile">
                                        <i class="feather icon-user"></i> Profile
                                    </a>
                                </li>
                                <li>
                                    <a href="home">
                                        <i class="feather icon-log-out"></i> Logout
                                    </a>
                                </li>
                            </ul>

                        </div>
                    </li>
                </ul>   
            </div>
        </nav>


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
                    <h1 class="display-3 text-white animated zoomIn">Doctor Profile</h1>
                    <a href="" class="h4 text-white">Home</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h4 text-white">Order</a>
                </div>
            </div>
        </div>
        <!-- Hero End -->
        <!-- Appointment Start -->
        <h4 class="text-body fst-italic mb-4">Thank you for using the system</h4>
                    <p class="mb-4">The system has sent an email confirming the medical examination through the system to the customer</p>
                    <p class="mb-4">Pleased to serve you</p>
        <div class="mt-2 mb-5 page-body container" style="margin-top: 10px;">
            <div class="row">

            </div>
            <div class="row">


                <div class="">
                        <div style="overflow-x: auto; overflow-y: auto">
                            <table id="multi-table" class="table table-striped table-bordered nowrap table-hover">
                                <tr class="text-center">

                                    <th>Customer Name</th>
                                    <th>Date of order</th>
                                    <th>Total Cost</th>  
                                    <th></th>
                                </tr>
                                <!-- comment -->

                                <tr class="text-center">
                                    <!--Delete-->
                                <td>${requestScope.order.customer.name}</td>
                                <td>${requestScope.order.dateOrder}</td>
                                <td>${requestScope.order.totalPrice}</td>
                                <td><a href="OrderDetail?o_id=${requestScope.o_id}">View Order Detail</a></td>
                                </tr>
                            </table>
                        </div>


                        <div style="background-color: white;margin-left:  45%; width: 10%;color: black;margin-top: 10px"></div>
                        <br/>
                        <div class="row ">
                            <div class="col-lg-4">

                            </div>
                            <div class="col-lg-4 text-center">
                                <a href="home" class="btn btn-primary w-100">Home</a>
                            </div>
                            <div style="text-align:end" class="col-lg-4">

                            </div>

                            <!-- Go to service list page -->

                            <!-- Go to Reservation Contact page -->
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
</html>
<jsp:include page="../component/bottom.jsp"></jsp:include>
