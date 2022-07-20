<%-- 
    Document   : changePassword
    Created on : May 19, 2022, 11:44:45 PM
    Author     : Asus
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Bae Care - Change Password</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="frontend/assert/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="frontend/assert/lib/animate/animate.min.css" rel="stylesheet">
        <link href="frontend/assert/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
        <link href="frontend/assert/lib/twentytwenty/twentytwenty.css" rel="stylesheet" />
        <!-- feather Awesome -->
        <link rel="stylesheet" type="text/css" href="frontend\assert\libAdmin\assets\icon\feather\css\feather.css">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="frontend/assert/css/mycss/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="frontend/assert/css/mycss/style.css" rel="stylesheet">

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
                    <h1 class="display-3 text-white animated zoomIn">Change Password</h1>
                    <a href="" class="h4 text-white">User</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h4 text-white">Change Password</a>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Appointment Start -->
        <div class="container-fluid bg-primary bg-appointment mb-5 wow fadeInUp" data-wow-delay="0.1s" style="margin-top: 90px;">
            <div class="container">
                <div class="row gx-5">
                    <div class="col-lg-6 py-5">
                        <div class="py-5">
                            <h1 class="display-5 text-white mb-4">     Change Password</h1>
                            <p class="text-white mb-0">${requestScope.error} Please enter current password and new password to change password. </p>

                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="appointment-form h-100 d-flex flex-column justify-content-center text-center p-5 wow zoomIn" data-wow-delay="0.6s">
                            <h1 class="text-white mb-4"></h1>
                            <form action="changePassword" method="post"> 
                                <div class="row g-3">

                                    <div class="col-12 col-sm-12">
                                        <input type="password" id="password" name="currentPassword" required class="form-control bg-light border-0" placeholder="Current Password" style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-12">
                                        <input type="password" id="newPassword" name="newPassword" required class="form-control bg-light border-0" placeholder="New Password" style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-12">
                                        <input type="password" id="confirmPassword" name="confirmPassword" required class="form-control bg-light border-0" placeholder="Confirm Password " style="height: 55px;">
                                    </div>

                                    <div class="col-12">
                                        <button class="btn btn-dark w-100 py-3" type="submit">Submit</button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


        <jsp:include page="../component/bottom.jsp"></jsp:include>
