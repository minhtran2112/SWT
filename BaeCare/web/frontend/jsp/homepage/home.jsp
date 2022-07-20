<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>


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
                    <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link active">Home</a>
                <a href="${pageContext.request.contextPath}/slide" class="nav-item nav-link">News</a>
                <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link ">Service</a>
                <a href="${pageContext.request.contextPath}/post" class="nav-item nav-link ">Post</a>
                <a href="${pageContext.request.contextPath}/doctor" class="nav-item nav-link ">Doctor</a>
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

    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img style="height:500px;object-fit:cover;" class="w-100" src="${requestScope.listSlide.get(0).slideImg}" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <a href="slide?slide=${requestScope.listSlide.get(0).slideID}">

                                <h1 style="text-decoration: underline" class="text-white text-uppercase mb-3 animated slideInDown">${requestScope.listSlide.get(0).slideTitle}</h1>
                                <p class="display-6 text-white mb-md-4 animated zoomIn text-truncate">${requestScope.listSlide.get(0).slideDetail}</p>
                            </a>
                            <a href="slide" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">View More</a>
                        </div>
                    </div>
                </div>
                <c:forEach items="${requestScope.listSlide}" var="s" begin="1" end="5">
                    <div class="carousel-item">
                        <img style="height:500px;object-fit:cover;" class="w-100" src="${s.slideImg}" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 900px;">
                                <a href="slide?slide=${s.slideID}">
                                    <h1 style="text-decoration: underline" class="text-white text-uppercase mb-3 animated slideInDown">${s.slideTitle}</h1>
                                    <p class="display-6 text-white mb-md-4 animated zoomIn text-truncate">${s.slideDetail}</p>
                                </a>
                                <a href="slide" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">View More</a>

                            </div>
                        </div>
                    </div>

                </c:forEach>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->

    <style>
        .card{
            cursor:pointer;
            transition: linear 0.5s;
        }
        .card:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .card-body{
            text-transform: capitalize;
        }
    </style>

    <!-- About Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-7">
                    <div class="section-title mb-4">
                        <h5 class="position-relative d-inline-block text-primary text-uppercase">Blog Spot</h5>

                    </div>
                    <div class="row g-3">
                        <div class="col-lg-12 wow zoomIn" data-wow-delay="0.3s">

                            <c:forEach items="${firstFourPost}" var="p">

                                <div onclick="window.location.href = 'postDetal?id=${p.postID}'" class="card mb-3">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img src="${p.postImg}" class="img-fluid rounded-start" alt="...">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body">
                                                <p class="card-text">${p.category.nameCategory}&emsp;&squf;&emsp;${p.author.nameAuthor}</p>
                                                <h5 class="card-title">${p.postTitle}</h5>

                                                <p class="card-text">Posted <fmt:formatDate type = "date" value ="${p.postDate}"/></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <!-- blog content -->
                        </div>




                    </div>
                    <a href="post" class="btn btn-primary py-3 px-5 mt-4 wow zoomIn" data-wow-delay="0.6s">View all post</a>
                </div>
                <div class="col-lg-5" style="min-height: 500px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute w-100 h-100 rounded wow zoomIn" data-wow-delay="0.9s" src="frontend/assert/img/about.jpg" style="object-fit: cover;">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Service Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-5 mb-5">
                <div class="col-lg-5 service-item wow zoomIn" data-wow-delay="0.3s" style="min-height: 400px;">
                    <div class="position-relative h-100  overflow-hidden zoomIn">
                        <a href="servicedetail?sId=${requestScope.listService.get(randomServiceIndex[0]).sid}">
                            <div style="height:440px;" class="rounded-top overflow-hidden">
                                <img class="position-absolute w-100 h-100" src="${requestScope.listService.get(randomServiceIndex[0]).photo}" style="object-fit: cover;">
                            </div>
                            <div class="position-relative bg-light rounded-bottom text-center p-4">
                                <h5 class="m-0">${requestScope.listService.get(randomServiceIndex[0]).sname}</h5>
                            </div>

                        </a>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="section-title mb-5">

                        <h5 class="position-relative d-inline-block text-primary text-uppercase">Our Services</h5>
                        <h1 class="display-5 mb-0">We Offer The Best Quality Dental Services</h1>
                    </div>
                    <div class="row g-5">

                        <div class=" col-md-6 service-item wow zoomIn" data-wow-delay="0.6s">
                            <a href="servicedetail?sId=${requestScope.listService.get(randomServiceIndex[1]).sid}">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="${requestScope.listService.get(randomServiceIndex[1]).photo}" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">${requestScope.listService.get(randomServiceIndex[1]).sname}</h5>
                                </div>
                            </a>
                        </div>

                        <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.9s">
                            <a href="servicedetail?sId=${requestScope.listService.get(randomServiceIndex[2]).sid}">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="${requestScope.listService.get(randomServiceIndex[2]).photo}" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">${requestScope.listService.get(randomServiceIndex[2]).sname}</h5>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-5 wow fadeInUp" data-wow-delay="0.1s">
                <div class="col-lg-7">
                    <div class="row g-5">
                        <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.3s">
                            <a href="servicedetail?sId=${requestScope.listService.get(randomServiceIndex[3]).sid}">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="${requestScope.listService.get(randomServiceIndex[3]).photo}" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">${requestScope.listService.get(randomServiceIndex[3]).sname}</h5>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6 service-item wow zoomIn" data-wow-delay="0.6s">
                            <a href="servicedetail?sId=${requestScope.listService.get(randomServiceIndex[4]).sid}">
                                <div style="height:240px;" class="rounded-top overflow-hidden">
                                    <img class="img-fluid" src="${requestScope.listService.get(randomServiceIndex[4]).photo}" alt="">
                                </div>
                                <div class="position-relative bg-light rounded-bottom text-center p-4">
                                    <h5 class="m-0">${requestScope.listService.get(randomServiceIndex[4]).sname}</h5>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 service-item wow zoomIn" data-wow-delay="0.9s">
                    <div style="background-image: url('https://source.unsplash.com/random')" class="position-relative bg-primary rounded h-100 d-flex flex-column align-items-center justify-content-center text-center p-4">
                        <h3 style='text-shadow: 2px 2px 8px black;' class="text-white mb-3">Explore more</h3>

                        <a href="service" class="zoom-in text-white mb-0 btn btn-primary">Go to the service page</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->

    <jsp:include page="../component/bottom.jsp"></jsp:include>