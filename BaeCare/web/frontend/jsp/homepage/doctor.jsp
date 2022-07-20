<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link">Home</a>
                <a href="${pageContext.request.contextPath}/slide" class="nav-item nav-link">News</a>
                <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link ">Service</a>
                <a href="${pageContext.request.contextPath}/post" class="nav-item nav-link ">Post</a>
                <a href="${pageContext.request.contextPath}/doctor" class="nav-item nav-link active ">Doctor</a>
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
                <a href="${pageContext.request.contextPath}/manager/customerslist" class="nav-item nav-link">Manager</a>

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
                <h1 class="display-3 text-white animated zoomIn">Doctor</h1>
                <a href="home" class="h4 text-white">Home</a>
                <i class="far fa-circle text-white px-2"></i>
                <a href="doctor" class="h4 text-white">Doctor</a>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Service Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row mb-5 p-5" style="background-color: var(--primary) ; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <div class="col-lg-3">
                    <form action="doctor" method="post">
                        <select class="form-select p-2" name="tId" id="doctorByS" onchange="form.submit()">
                            <option value="0">Choose Doctor</option>
                            <c:forEach items="${requestScope.serviceTypeList}" var="st">
                                <option ${(st.t_id == requestScope.tId)?"selected=\"selected\"":"" } value="${st.t_id}"></option>
                            </c:forEach>
                        </select>
                    </form>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-9">
                            <input id = "searchDoctor" oninput="searchByName(this)" type="text" class="form-control p-2" value="${searchContent}" placeholder="Search a doctor by name">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3"></div>
            </div>

            <div class="container-fluid py-5">
                <div class="container">
                    <div id="contentM" class="row g-5">
                        <c:if test="${requestScope.doctorList.size() eq 0}">
                            <div class="row align-items-center text-center">
                                <img style='margin:10px auto -10px auto;' class='w-25' src="frontend/assert/img/service/notfound.png" alt="alt" />
                                <h1>
                                    Can't not found this doctor!!
                                </h1>
                            </div>
                        </c:if>
                        <c:if test="${requestScope.doctorList.size() ne 0}">
                            <c:forEach items="${requestScope.doctorList}" var="d">
                                <div class="doctor col-lg-4 wow">
                                    <div class="team-item">
                                        <div class="position-relative rounded-top" style="z-index: 1;">
                                            <img class="img-fluid rounded-top w-100" src="${d.user.photo}" alt="Doctor_Photo">
                                            <div class="position-absolute top-100 start-50 translate-middle bg-light rounded p-2 d-flex">
                                                <a class="btn btn-primary btn-square m-1" href="${d.twitter}"><i class="fab fa-twitter fw-normal"></i></a>
                                                <a class="btn btn-primary btn-square m-1" href="${d.facebook}"><i class="fab fa-facebook-f fw-normal"></i></a>
                                                <a class="btn btn-primary btn-square m-1" href="${d.linkedin}"><i class="fab fa-linkedin-in fw-normal"></i></a>
                                                <a class="btn btn-primary btn-square m-1" href="${d.instagram}"><i class="fab fa-instagram fw-normal"></i></a>
                                            </div>
                                        </div>
                                        <div class="team-text position-relative bg-light text-center rounded-bottom p-4 pt-5">
                                            <h4 class="mb-2"> 
                                                <a href="doctorDetail?email=${d.user.email}">Dr. ${d.user.name}</a>
                                            </h4>
                                            <p class="text-primary mb-0">
                                                <a href="doctorDetail?email=${d.user.email}">${d.serviceType.t_name}</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>
                    <div class="col-12 text-center">
                        <br><button onclick="loadMore()" class="btn btn-primary w-auto py-2">Load More</button>
                    </div>
                </div>
            </div>
            <!-- Team End -->
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
                            function loadMore() {
                                var amount = document.getElementsByClassName("doctor").length;
                                var doctorByService = document.getElementById("doctorByS").value;
                                var search = document.getElementById("searchDoctor").value;
                                $.ajax({
                                    url: "/BaeCare/load",
                                    type: "get", //send it through get method
                                    data: {
                                        doctor: doctorByService,
                                        exits: amount,
                                        search: search
                                    },
                                    success: function (data) {
                                        var row = document.getElementById("contentM");
                                        row.innerHTML += data;
                                    },
                                    error: function (xhr) {
                                        //Do Something to handle error
                                    }
                                });
                            }
                            function searchByName(param) {
                                var search = param.value;
                                var doctorByService = document.getElementById("doctorByS").value;
                                $.ajax({
                                    url: "/BaeCare/searchDoctor",
                                    type: "get", //send it through get method
                                    data: {
                                        doctor: doctorByService,
                                        search: search
                                    },
                                    success: function (data) {
                                        var row = document.getElementById("contentM");
                                        row.innerHTML = data;
                                    },
                                    error: function (xhr) {
                                        //Do Something to handle error
                                    }
                                });
                            }
    </script>


    <jsp:include page="../component/bottom.jsp"></jsp:include>