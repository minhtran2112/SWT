<%-- 
    Document   : reservationContact
    Created on : Jun 4, 2022, 4:12:47 PM
    Author     : tkoko
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <title>Bae Care</title>
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
        <link href="../frontend/assert/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="../frontend/assert/lib/animate/animate.min.css" rel="stylesheet">
        <link href="../frontend/assert/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
        <link href="../frontend/assert/lib/twentytwenty/twentytwenty.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="../frontend/assert/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="../frontend/assert/css/style.css" rel="stylesheet">
        <script>
            function back() {
                location.href = "../Reservation";
            }
        </script>
    </head>
    <body>
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
                    <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link ">Home</a>
                    <a href="${pageContext.request.contextPath}/slide" class="nav-item nav-link">News</a>
                    <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link ">Service</a>
                    <a href="${pageContext.request.contextPath}/post" class="nav-item nav-link ">Post</a>
                    <c:if test="${sessionScope.account ne null && sessionScope.account.role.id==5}">
                        <a href="${pageContext.request.contextPath}/Reservation" class="nav-item nav-link">Cart</a>
                        <a href="${pageContext.request.contextPath}/myorder/list" class="nav-item nav-link active">Order</a>
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
                                    <img src="${sessionScope.account.photo}" style="width: 50px" class="img-radius" alt="User-Image">
                                    <span>${sessionScope.account.name}</span>

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

        <!-- Navbar End -->
        <div class="container-fluid bg-primary py-5 hero-header mb-5">
            <div class="row py-3">
                <div class="col-12 text-center">
                    <h1 class="display-3 text-white animated zoomIn">Reservation Contact</h1>
                    <a href="../home" class="h4 text-white">Home</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="contect" class="h4 text-white"></a>
                </div>
            </div>
        </div>
        <input type="submit" value="Change" onclick="back()" id="submitButton">
        <p id="notice">Click to return to page Reservation Details</p>
        <br/>
        <!--(including full-name, gender, email, mobile, address, note-->
        <div id="div_giua">
            <form action="completion" method="POST" id="contactForm" style="margin-top: 20px">
                <h3>Billing Information</h3>
                Full Name:<input type="text" name="name" value="${sessionScope.user.name}" placeholder="Full name"><br/>
                Gender:<input type="radio" name="gender" value="true"
                              <c:if test="${sessionScope.user.gender==true}">
                                  checked=""
                              </c:if>
                              >Male
                <input type="radio" name="gender" value="false"
                       <c:if test="${sessionScope.user.gender==false}">
                           checked=""
                       </c:if>
                       >Female<br/>
                Email:<input type="text" name="email" value="${sessionScope.user.email}" placeholder="Email"><br/>
                Phone:<input type="text" name="phone" value="${sessionScope.user.phone}" placeholder="Phone"><br/>
                Address:<input type="text" name="address" value="${sessionScope.user.address}" placeholder="Address"><br/>
                Note:<textarea name="note" placeholder="Note something"></textarea>

                <table class="table table-striped table-class" id= "table-id" border="1px">
                    <tr>
                        <td>Cardinal numbers</td>
                        <td>Service</td>
                        <td>Into money</td>
                    </tr>
                    <c:set var="total" value="0"></c:set>
                    <c:set var="index" value="1"></c:set>
                    <c:forEach items="${requestScope.carts}" var="c">
                        <c:set var="total"  value="${total+c.service.sale_price*c.quantity}"></c:set>
                            <tr>
                                <td>${index}</td>
                            <td>${c.service.sname} x${c.quantity}
                            </td>
                            <td>
                                ${c.service.sale_price * c.quantity}$
                            </td>
                        </tr>
                        <c:set var="index" value="${index+1}"></c:set>
                    </c:forEach>
                    <tr>
                        <td>Total</td>
                        <td></td>
                        <td>${total} $</td>
                    </tr>
                </table>
                <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
            </form>
        </div>
        <!-- Back to Top -->
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
    </body>
</html>



