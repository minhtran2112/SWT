<%-- 
    Document   : service
    Created on : Jun 5, 2022, 11:59:30 AM
    Author     : nghia
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../component/top.jsp"></jsp:include>

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
                <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link active">Service</a>
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
                <h1 class="display-3 text-white animated zoomIn">Services</h1>
                <a href="home" class="h4 text-white">Home</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="service" class="h4 text-white">Services</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Service Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row mb-5 p-5" style="background-color: var(--primary) ; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <div class="col-lg-3">
                    <form action="service" method="get">

                        <select class="form-select p-2" name="tId" id="" onchange="form.submit()">
                            <c:if test="${requestScope.tId eq 0}">


                                <option value="0" selected>
                                    All service
                                </option>
                            </c:if>
                            <c:if test="${requestScope.tId ne 0}">
                                <option value="0">
                                    All service
                                </option>
                            </c:if>
                            <c:forEach items="${requestScope.serviceTypeList}" var="st">
                                <c:if test="${requestScope.tId eq st.t_id}">


                                    <option value="${st.t_id}" selected>
                                        ${st.t_name}
                                    </option>
                                </c:if>
                                <c:if test="${requestScope.tId ne st.t_id}">
                                    <option value="${st.t_id}" >
                                        ${st.t_name}
                                    </option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </form>

                </div>
                <div class="col-lg-6">
                    <form action="service" method="get" id="serviceSearch">
                        <div class="row">
                            <div class="col-lg-9">
                                <input type="hidden" name="tId" value="${requestScope.tId}">
                                <input type="search" class="form-control p-2" name="searchContent" value="${searchContent}" placeholder="Search a service">
                            </div>
                            <div class="col-lg-3">
                                <button form="serviceSearch" type="submit" class="btn btn-dark p-2">Search</button>
                            </div>
                        </div>


                    </form>

                </div>
                <div class="col-lg-3">

                </div>

            </div>
            <div class="row g-5 mb-5">
                <c:if test="${requestScope.serviceList.size() ne 0}">
                    <div class="col-lg-5 wow zoomIn" data-wow-delay="0.3s" style="min-height: 400px;">
                        <a href="servicedetail?sId=${requestScope.serviceList.get(serviceStart).getSid()}">
                            <img class="w-100 h-100" src="${requestScope.serviceList.get(serviceStart).getPhoto()}" style="object-fit: cover;">
                        </a>
                    </div>
                    <div class="col-lg-7">
                        <div class="section-title mb-5">
                            <a href="servicedetail?sId=${requestScope.serviceList.get(serviceStart).getSid()}">
                                <h5 class="position-relative d-inline-block text-primary text-uppercase">Our Services</h5>
                                <h1 class="display-5 mb-0">${requestScope.serviceList.get(serviceStart).getSname()}</h1>
                            </a>
                        </div>


                    </div>
                </c:if>
                <c:if test="${requestScope.serviceList.size() eq 0}">
                    <div class="row align-items-center text-center">
                        <img style='margin:10px auto -10px auto;' class='w-25' src="frontend/assert/img/service/notfound.png" alt="alt" />
                        <h1>
                            Can't not found this service!!
                        </h1>
                    </div>

                </c:if>

            </div>
            <c:if test="${requestScope.serviceList.size() >1}">
                <div class="row g-5 wow fadeInUp" data-wow-delay="0.1s">

                    <c:forEach items="${requestScope.serviceList}" var="s" begin="${requestScope.serviceStart+1}" end="${requestScope.serviceEnd}">


                        <div class="col-lg-3">
                            <div class="row g-5">
                                <a href="servicedetail?sId=${s.getSid()}">
                                    <div class="col-md-12 service-item wow zoomIn" data-wow-delay="0.3s">
                                        <div class="rounded-top overflow-hidden">
                                            <img class="img-fluid" src="${s.getPhoto()}" alt="">
                                        </div>
                                        <div class="position-relative bg-light rounded-bottom text-center p-4">
                                            <h5 class="m-0">${s.getSname()}</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
        </div>
    </div>
    <!-- Service End -->
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4 text-center">
            <a class="btn btn-primary" href="service?page=${1}&tId=${tId}&searchContent=${searchContent}">Start</a>
            <c:if test="${page-2 >0}">
                <a class="btn btn-primary" href="service?page=${page-2}&tId=${tId}&searchContent=${searchContent}">${page-2}</a>
            </c:if>
            <c:if test="${page-1 >0}">
                <a class="btn btn-primary" href="service?page=${page-1}&tId=${tId}&searchContent=${searchContent}">${page-1}</a>
            </c:if>

            <a class="btn btn-dark" href="service?page=${page}&tId=${tId}&searchContent=${searchContent}">${page}</a>
            <c:if test="${page+1 <=totalPage}">
                <a class="btn btn-primary" href="service?page=${page+1}&tId=${tId}&searchContent=${searchContent}">${page+1}</a>
            </c:if>
            <c:if test="${page+2 <=totalPage}">
                <a class="btn btn-primary" href="service?page=${page+2}&tId=${tId}&searchContent=${searchContent}">${page+2}</a>
            </c:if>

            <a class="btn btn-primary" href="service?page=${totalPage}&tId=${tId}&searchContent=${searchContent}">End</a>
        </div>
        <div class="col-lg-4"></div>

    </div>

    <!-- Newsletter Start -->
    <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">
        <div class="container">
            <div class="bg-primary p-5">
                <form class="mx-auto" style="max-width: 600px;">
                    <div class="input-group">
                        <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                        <button class="btn btn-dark px-4">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Newsletter End -->

    <jsp:include page="../component/bottom.jsp"></jsp:include>