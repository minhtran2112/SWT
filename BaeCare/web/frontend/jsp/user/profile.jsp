<%-- 
    Document   : Profile
    Created on : May 20, 2022, 10:54:40 PM
    Author     : Asus
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../component/top.jsp"></jsp:include>
    <body>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
            <a href="home" class="navbar-brand p-0">
                <h1 class="m-0 text-primary"><img class="w-25 h-25" src="../frontend/assert/img/logo.ico" alt="">BaeCare</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link">Home</a>
                    <a href="${pageContext.request.contextPath}/slide" class="nav-item nav-link">News</a>
                    <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link ">Service</a>
                    <a href="${pageContext.request.contextPath}/post" class="nav-item nav-link ">Post</a>
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
                    <h1 class="display-3 text-white animated zoomIn">User Profile</h1>
                    <a href="" class="h4 text-white">Home</a>
                    <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h4 text-white">User Profile</a>
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
                                Click to change photo:<input type="file" name="photo">
                                <img src="${requestScope.user.photo}" alt="user_photo" style="width: 100px">

                                <div class="col-12">
                                    <p>Email: </p>
                                    <div type="text" class="form-control border-0 bg-light px-4" style="height: 40px;">${user.email}</div>
                                    <input type="hidden" value="${user.email}" name="email">
                                </div>
                                <div class="col-12">
                                    <p>Full Name: </p>
                                    <input type="text" class="form-control border-0 bg-light px-4" value="${user.name}" name="name" maxlength="255" style="height: 55px;" required>
                                </div>

                                <div class="col-12">
                                    <p>Dob: </p>
                                    <input type="date" class="form-control border-0 bg-light px-4" style="height: 55px;" name="dob" value="${user.dob}">
                                </div>
                                <div class="col-12">
                                    <p>Gender: </p>
                                    <div class="form-gender-output form-gender-output--option">
                                        <c:if test="${user.gender}">
                                            <div class="form-gender-output--option-male">
                                                <input type="radio" id="male" name="gender" value="male" checked>
                                                <label for="male" >Male</label>
                                            </div>
                                            <div class="form-gender-output--option-female">
                                                <input type="radio" id="female" name="gender" value="female">
                                                <label for="female">Female</label><br>
                                            </div>
                                        </c:if>
                                        <c:if test="${!user.gender}">
                                            <div class="form-gender-output--option-male">
                                                <input type="radio" id="male" name="gender" value="male">
                                                <label for="male" >Male</label><br>
                                            </div>
                                            <div class="form-gender-output--option-female">
                                                <input type="radio" id="female" name="gender" value="female" checked>
                                                <label for="female">Female</label><br>
                                            </div>
                                        </c:if>
                                    </div>                             
                                </div>
                                <div class="col-12">
                                    <p>Phone: </p>
                                    <input type="text" class="form-control border-0 bg-light px-4" style="height: 55px;"value="${user.phone}" name="phone" maxlength="255">
                                </div>
                                <div class="col-12">
                                    <p>Address: </p>
                                    <input type="text" class="form-control border-0 bg-light px-4" style="height: 55px;" value="${user.address}" name="address" maxlength="255">
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Submit</button>
                                </div>
                                <div class="col-12" style="text-align: center" >
                                    <h4>${requestScope.mess}</h4>
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
