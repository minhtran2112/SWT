<%-- 
    Document   : registration
    Created on : May 19, 2022, 12:03:32 PM
    Author     : chitung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Register</title>
            <script>
                function formValidation()
                {
                    var passid = document.registration.password;
                    var uname = document.registration.name;
                    var uadd = document.registration.address;
                    var uemail = document.registration.email;
                    var umsex = document.registration.gender;
                    var ufsex = document.registration.gender2;
                    var dob = document.registration.dob;
                    var mobile = document.registration.mobile;
                    if (allLetter(uname))
                    {
                        if (ValidateEmail(uemail))
                        {
                            if (ValidatePass(passid))
                            {
                                if (ValidateMobile(mobile)) {

                                    if (alphanumeric(uadd))
                                    {
                                        if (isValidDate(dob)) {

                                            if (validsex(umsex, ufsex))
                                            {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }return false;
                    }
                function isValidDate(dateString)
                {
                    // First check for the pattern
                    var regex_date = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
                    if (!regex_date.test(dateString))
                    {
                        return false;
                    }

                    // Parse the date parts to integers
                    var parts = dateString.split("-");
                    var day = parseInt(parts[2], 10);
                    var month = parseInt(parts[1], 10);
                    var year = parseInt(parts[0], 10);
                    // Check the ranges of month and year
                    if (year < 1000 || year > 3000 || month == 0 || month > 12)
                    {
                        return false;
                    }

                    var monthLength = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
                    // Adjust for leap years
                    if (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
                    {
                        monthLength[1] = 29;
                    }
                    if (day > 0 && day <= monthLength[month - 1]) {
                        return true;
                    } else {
                        alert("Your date of birth is invalid. Try again");
                        dateString.focus();
                        return false;
                    }
                }
                function ValidateEmail(uemail)
                {
                    var mailformat = /^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$/;
                    if (uemail.value.match(mailformat))
                    {
                        return true;
                    } else
                    {
                        alert("You have entered an invalid email address!\nExample format: abc123@gmail.com");
                        uemail.focus();
                        return false;
                    }
                }
                function ValidateMobile(mobile)
                {
                    var mailformat = /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}/;
                    if (mobile.value.match(mailformat))
                    {
                        return true;
                    } else
                    {
                        alert("User mobile must have number only");
                        mobile.focus();
                        return false;
                    }
                }
                function alphanumeric(uadd)
                {
                    var letters = /^[0-9a-zA-Z]+$/;
                    if (uadd.value.match(letters))
                    {
                        return true;
                    } else
                    {
                        alert('User address must have alphanumeric characters only');
                        uadd.focus();
                        return false;
                    }
                }
                function allLetter(uname)
                {
                    var letters = /^[A-Za-z]+$/;
                    if (uname.value.match(letters))
                    {
                        return true;
                    } else
                    {
                        alert('Username must have alphabet characters only');
                        uname.focus();
                        return false;
                    }
                }
                function ValidatePass(password)
                {
                    var mailformat = /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}/;
                    if (password.value.match(mailformat))
                    {
                        return true;
                    } else
                    {
                        alert("Password must be including uppercase, lowercase, numbers, no whitespace and at least 8 technical characters");
                        password.focus();
                        return false;
                    }
                }
                function validsex(umsex, ufsex)
                {
                    x = 0;
                    if (umsex.checked)
                    {
                        x++;
                    }
                    if (ufsex.checked)
                    {
                        x++;
                    }
                    if (x == 0)
                    {
                        alert('Select Male/Female');
                        umsex.focus();
                        return false;
                    } else
                    {
                        alert('Form Successfully Submitted');
                        window.location.reload();
                        return true;
                    }
                }
            </script>
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
                        <h1 class="display-3 text-white animated zoomIn">Registration</h1>
                        <a href="" class="h4 text-white">Home</a>
                        <i class="far fa-circle text-white px-2"></i>
                        <a href="" class="h4 text-white">Registration</a>
                    </div>
                </div>
            </div>
            <!-- Hero End -->

            <!-- Contact Start -->
            <div class="container-fluid py-5">
                <div class="container">
                    <form action="Registration" method="POST" name='registration' onSubmit="return formValidation();" enctype="multipart/form-data">
                        <div class="row g-5">
                            <div class="col-xl-4 col-lg-6 wow slideInUp" data-wow-delay="0.1s">
                                <div class="bg-light rounded h-100 p-5">
                                    <div class="section-title">
                                        <h6 class="position-relative d-inline-block text-primary text-uppercase" style="font-size: 20px">Account request</h6>
                                        <h6 class="display-6 mb-4" style="font-size: 15px">The user must comply with the following requirements</h6>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="text-start">
                                            <h5 class="mb-0" style="font-size: 17px">Full Name</h5>
                                            <span style="font-size: 15px">Include lowercase,uppercase and white space</span>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="text-start">
                                            <h5 class="mb-0" style="font-size: 17px">Password</h5>
                                            <span style="font-size: 15px">Must contains uppercase, lowercase, number, no space and at least 8 characters</span>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-start">
                                            <h5 class="mb-0" style="font-size: 17px">Mobile</h5>
                                            <span style="font-size: 15px">Only number</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 wow slideInUp" data-wow-delay="0.3s">

                                <div class="row g-3">
                                    <div class="col-12">
                                        <input type="text" name="name" class="form-control border-0 bg-light px-4" placeholder="Your Name" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="email" name="email" class="form-control border-0 bg-light px-4" placeholder="Your Email" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="password" name="password" class="form-control border-0 bg-light px-4" placeholder="Your Password" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name="mobile" class="form-control border-0 bg-light px-4" placeholder="Your Number" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name="address" class="form-control border-0 bg-light px-4" placeholder="Your Address" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <div class="date" id="date1" data-target-input="nearest">
                                            <input type="date" name="dob"
                                                   class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Date of birth" data-target="#date1" data-toggle="datetimepicker" style="height: 55px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-12 wow slideInUp" data-wow-delay="0.3s" >

                                <div class="col-12">
                                    <input type="file" name="photo" class="form-control border-0 bg-light px-4" placeholder="Your Address" style="height: 55px;">    
                                </div><br/>
                                <div class="col-12">
                                    Gender<br/>
                                    <input type="radio" name="gender" value="Male"  > Male<br/><!-- comment -->
                                    <input type="radio" name="gender2" value="Female"> Female<!-- comment -->
                                </div><br/><br/>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Register</button>
                                </div>
                                <div class="col-12">
                                    <h5 style="color: #664d03;">${requestScope.exist}</h5>
                                <h5 style="color: #664d03;">${requestScope.error}</h5>

                            </div>
                        </div>
                    </div></form>
            </div>
        </div>
        <!-- Contact End -->
        <!-- Newsletter Start -->
        <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">
            <div class="container">
                <div>

                </div>
            </div>
        </div>
        <!-- Newsletter End -->
    </body><br/><br/>
    <jsp:include page="../component/bottom.jsp"></jsp:include>
</html>
