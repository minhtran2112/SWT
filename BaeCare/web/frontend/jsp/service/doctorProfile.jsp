<%-- 
    Document   : Profile
    Created on : May 20, 2022, 10:54:40 PM
    Author     : Asus
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <!DOCTYPE html>
    <html lang="en">
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
                    <a href="" class="h4 text-white">Doctor Profile</a>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- Contact Start -->
        <c:set var="user" value="${requestScope.user}"/>
        <div class="container-fluid py-5">
            <div class="container ">
                <div class="row g-5">
                    <div class="col-xl-6 col-lg-6 wow slideInUp" data-wow-delay="0.1s">
                        <div class="bg-light rounded h-100 p-5">
                            <div class="section-title">
                                <h5 class="position-relative d-inline-block text-primary text-uppercase">Contact Us</h5>
                                <h1 class="display-6 mb-4">Feel Free To Contact Us</h1>
                            </div>
                            <div class="d-flex align-items-center mb-2">
                                <i class="bi bi-geo-alt fs-1 text-primary me-3"></i>
                                <div class="text-start">
                                    <h5 class="mb-0">Our Office</h5>
                                    <span>Khu Cong nghe Cao Hoa Lac, Thach That, Ha Noi</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-2">
                                <i class="bi bi-envelope-open fs-1 text-primary me-3"></i>
                                <div class="text-start">
                                    <h5 class="mb-0">Email Us</h5>
                                    <span>Team4_SWP391@gmail.com</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center">
                                <i class="bi bi-phone-vibrate fs-1 text-primary me-3"></i>
                                <div class="text-start">
                                    <h5 class="mb-0">Call Us</h5>
                                    <span>+012 345 6789</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-6 col-lg-6 wow slideInUp" data-wow-delay="0.3s">
                        <form action="profile" method="post" enctype="multipart/form-data">
                            <div class="row g-3">
                                <img src="${requestScope.doctor.photo}" alt="user_photo" style="width: 100px">

                                <div class="col-12">
                                    <p>Email: ${doctor.email} </p>
                                </div>
                                <div class="col-12">
                                    <p>Full Name: ${doctor.name}</p>
                                </div>

                                <div class="col-12">
                                    <p>Dob: ${doctor.dob}</p>
                                </div>
                                <div class="col-12">
                                    <p>Gender:<c:if test="${requestScope.doctor.gender eq true}">
                                            Male
                                        </c:if>
                                        <c:if test="${requestScope.doctor.gender eq false}">
                                            Female
                                        </c:if> </p>



                                </div>
                                <div class="col-12">
                                    <p>Phone: ${doctor.phone}</p>
                                </div>
                                <div class="col-12">
                                    <p>Address: ${doctor.address} </p>

                                </div>
                                <div class="col-12">
                                </div>
                                <div class="col-12">
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <!-- Contact End -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            function  chooseFile(fileInput) {
                if (fileInput.files && fileInput.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#image').attr('src', e.target.result);
                    }
                    reader.readAsDataURL(fileInput.files[0]);
                }
            }
        </script>
        <jsp:include page="../component/bottom.jsp"></jsp:include>
