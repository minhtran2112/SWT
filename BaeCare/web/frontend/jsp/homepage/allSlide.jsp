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
                <a href="${pageContext.request.contextPath}/slide" class="nav-item nav-link active">News</a>
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
                <h1 class="display-3 text-white animated zoomIn">News</h1>
                <a href="home" class="h4 text-white">Home</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="slide" class="h4 text-white">News</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Service Start -->
    <div class="container py-5 wow fadeInUp" data-wow-delay="0.1s">
        <script>
            function radioSelectAsc() {
                document.getElementById("sortAsc").checked = true;
            }
            function radioSelectDesc() {
                document.getElementById("sortDesc").checked = true;
            }
        </script>
        <form action="slide" id='searchForm' method="get">
            <div class="row mb-3 p-5" style="background-color: var(--dark) ; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">

                <div class="col-lg-4">

                    <div class='row mb-2'>
                        <div class='col-lg-12'>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon3">Sort by</span>
                                <select class='form-select' name='sortType'>

                                    <option value='title' >
                                        Title
                                    </option>
                                    <option value='date' selected>
                                        Date modified
                                    </option>
                                </select>
                            </div>

                        </div>
                    </div>

                    <div class='row'> 
                        <div class='col-lg-6 text-center'>
                            <div onclick="radioSelectAsc()" class="btn btn-success">
                                <input type="radio" id="sortAsc" class=" form-check-input" name="sortOrder" value="asc" checked>
                            </div>
                            <button onclick="radioSelectAsc()" class='btn btn-success' form='searchForm' type='submit'>
                                Ascending
                            </button>
                        </div>    
                        <div  class='col-lg-6 text-center  '>
                            <div onclick="radioSelectDesc()"  class="btn btn-warning">
                                <input type="radio" id="sortDesc" class="form-check-input" name="sortOrder" value="desc">
                            </div>


                            <button onclick="radioSelectDesc()" class='btn btn-warning' form='searchForm' type='submit'>
                                Descending
                            </button>
                        </div>
                    </div>





                </div>
                <div class="col-lg-8">

                    <div class="row">
                        <div class="col-lg-9">

                            <input type="search" class="form-control" name="searchContent" value="${searchContent}" placeholder="Search a news">
                        </div>
                        <div class="col-lg-3">
                            <button form="searchForm" type="submit" class="btn btn-primary w-100">Search</button>
                        </div>
                    </div>




                </div>


            </div>
        </form>


        <c:if test="${requestScope.serviceList.size() eq 0}">
            <div class="row mb-5">
                <div class="row align-items-center text-center">
                    <img style='margin:10px auto -10px auto;' class='w-25' src="frontend/assert/img/service/notfound.png" alt="alt" />
                    <h1>
                        Empty News!
                    </h1>
                </div>
            </div>
        </c:if>

        <style>
            .slide-content {
                display: -webkit-box;
                -webkit-line-clamp: 3;
                -webkit-box-orient: vertical;
                overflow: hidden;
                text-overflow: ellipsis;
                word-break: break-word;
            }

            .slideItem {
                cursor: pointer;
                transition: linear 0.5s;
            }

            .slideItem:hover {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
        </style>
        <c:if test="${requestScope.listSlide.size() >1}">
            <div class="row wow fadeInUp" data-wow-delay="0.1s">

                <c:forEach items="${requestScope.listSlide}" var="s" begin="${slideStart}" end="${slideEnd}">

                    <div class="col-lg-6 ">

                        <div onclick="location.href = 'slide?slide=${s.slideID}'" class="slideItem card mb-3" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img style="object-fit:cover;" src="${s.slideImg}" class="img-fluid rounded-start h-100" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">${s.slideTitle}</h5>
                                        <p class="card-text slide-content">${s.slideDetail}</p>
                                        <p class="card-text"><small class="text-muted">${s.slideDate}</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>






                </c:forEach>
            </div>
        </c:if>

    </div>
    <!-- Service End -->
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4 text-center">
            <a class="btn btn-primary" href="slide?page=${1}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">Start</a>
            <c:if test="${page-2 >0}">
                <a class="btn btn-primary" href="slide?page=${page-2}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">${page-2}</a>
            </c:if>
            <c:if test="${page-1 >0}">
                <a class="btn btn-primary" href="slide?page=${page-1}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">${page-1}</a>
            </c:if>

            <a class="btn btn-dark" href="slide?page=${page}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">${page}</a>
            <c:if test="${page+1 <=totalPage}">
                <a class="btn btn-primary" href="slide?page=${page+1}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">${page+1}</a>
            </c:if>
            <c:if test="${page+2 <=totalPage}">
                <a class="btn btn-primary" href="slide?page=${page+2}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">${page+2}</a>
            </c:if>

            <a class="btn btn-primary" href="slide?page=${totalPage}&sortType=${sortType}&sortOrder=${sortOrder}&searchContent=${searchContent}">End</a>
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