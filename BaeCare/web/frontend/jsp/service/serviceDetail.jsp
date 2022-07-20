<%-- 
    Document   : service
    Created on : Jun 5, 2022, 11:59:30 AM
    Author     : nghia
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>
//        function showDoctorAndNumberOfPreOrdered() {
//
//            $.ajax({
//                data: {
//
//                    st_id: ${service.st.t_id}
//                },
//                url: "/BaeCare/loadDoctorForBooking",
//                type: "get",
//                success: function (response) {
//                    console.log(response)
//                    var detailList = document.getElementById("doctorTable");
//                    if (response === null) {
//                        detailList.innerHTML = "<tr>All doctors is not available in this day</tr>";
//                    } else {
//                        detailList.innerHTML = response;
//                    }
//
//
//                },
//                error: function (xhr) {
//
//                }
//            });
//
//
//        }
//        window.onload = showDoctorAndNumberOfPreOrdered();
</script>
<style>
    div.ECutPhoto {
        display: flex;
        align-items:  center;
        margin-top: 30px;
    }
    removeMargin {
        margin: 0px;
    }
    img.cutPhoto{
        width: 50px;
        height: 50px;
        object-fit: scale-down;
        clip-path: circle();
    }
    .rating-star{
        font-size: 2rem;
        width: 2rem;
        height: 2rem;
        position: relative;
        display: block;
        float:left;
    }
    .full-star:before {
        color: #f2b01e;
        content: "\2605";
        position: absolute;
        left: 0;
        overflow: hidden;
    }
    .display-star:before {
        color: #f2b01e;
        content: "\2605";
    }
    .empty-star:before {
        content: "\2605";
        position: absolute;
        left: 0;
        overflow: hidden;
    }
    .giuLayLe{
        transition:linear 0.5s;
    }
    .giuLayLe:hover{
        background-color: var(--primary);
        color:white;

    }
    .a.hover-up{
    }
    tr{

        -webkit-backdrop-filter: blur(30px);
        backdrop-filter: blur(30px);
        background-color: rgba(2, 2, 2, 0.486);
    }

</style>
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
    <div class="container-fluid mb-5 py-5" style="background: linear-gradient(rgba(9, 30, 62, .85), rgba(9, 30, 62, .85)), url(${requestScope.service.photo}) center center no-repeat;
         background-size: cover;">
        <div class="row">


            <div class="row">
                <div class="col-12 text-center">
                    <h1 class="display-3 text-white animated zoomIn">${requestScope.service.sname}</h1>
                </div>

            </div>
            <div class="row py-2">
                <div class="col-lg-4">
                    <div class="col-lg-12">
                        <img class="w-100 m-0" style="object-fit:cover;" src="${requestScope.service.photo}" alt="">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="col-lg-12">
                        <div class="price">
                            <c:if test="${service.original_price <= service.sale_price}">
                                <h3 style="color:seashell;">Price: ${service.original_price} $</h3>
                            </c:if>
                            <c:if test="${service.original_price > service.sale_price}">
                                <h3 style="color:seashell;">Price: ${service.sale_price}$   <span style="color:red; text-decoration: line-through;">${service.original_price}$</span></h3>

                            </c:if>

                        </div>
                        <div class="detail">
                            <p style="color:white;">${requestScope.service.details}</p>

                        </div>
                    </div>
                </div>

            </div>
            <div class="row">

                <div class="col-lg-4 text-center">
                    <form action="addCart" id="addCart" method="GET">
                        <div class="row mb-2 mt-3">
                            <strong id="dateAlert"></strong>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="basic-addon3">Select a day<br>for booking</span>
                                <input required type="date" onchange="checkDate()" class="form-control" id="dateExamination" name="dateExam" aria-describedby="basic-addon3"/>
                            </div>

                            <input type="hidden" value="${requestScope.service.sid}" name="sId" />



                        </div>


                    </form>
                    <div class="row mb-2">
                        <button form="addCart" type="submit" class="btn btn-primary">
                            Add for booking
                        </button>
                    </div>

                </div>


            </div>


            <div style="border-top:1px white dotted;" class="container">
                <div class="row mb-5 mt-1">
                    <div class="col-lg-4">
                        <div>
                            <p style="display:inline;color:white;">Filter by:</p>
                            <a href="servicedetail?sId=${requestScope.service.sid}&star=-1" class="giuLayLe btn
                               <c:if test="${filStar==-1}">
                                   btn-primary
                               </c:if>


                               ">All<span class="display-star" ></span></a>
                            <a href="servicedetail?sId=${requestScope.service.sid}&star=1" class="giuLayLe btn <c:if test="${filStar==1}">
                               btn-primary
                                </c:if>">1<span class="display-star" ></span></a>
                            <a href="servicedetail?sId=${requestScope.service.sid}&star=2" class="giuLayLe btn <c:if test="${filStar==2}">
                               btn-primary
                                </c:if>">2<span class="display-star" ></span></a>
                            <a href="servicedetail?sId=${requestScope.service.sid}&star=3" class="giuLayLe btn <c:if test="${filStar==3}">
                               btn-primary
                                </c:if>">3<span class="display-star" ></span></a>
                            <a href="servicedetail?sId=${requestScope.service.sid}&star=4" class="giuLayLe btn <c:if test="${filStar==4}">
                               btn-primary
                                </c:if>">4<span class="display-star" ></span></a>
                            <a href="servicedetail?sId=${requestScope.service.sid}&star=5" class="giuLayLe btn <c:if test="${filStar==5}">
                               btn-primary
                                </c:if>">5<span class="display-star" ></span></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <h4 style="color:white;text-align:center">Customer Feedback</h4>
                    </div>
                    <div class="col-lg-4">

                    </div>
                </div>
                <div class="row mb-5 mt-1">





                    <c:set value="false" var="tf"></c:set>
                    <c:forEach items="${requestScope.listFeedbacks}" var="f">

                        <c:set value="true" var="tf">

                        </c:set>
                        <div class="row mb-5">
                            <div class="card p-0 mb-3">
                                <div class="row">
                                    <div class="col-md-4">
                                        <img style src="${f.fphoto}" class="img-fluid rounded-start w-100 h-100" alt="...">
                                    </div>
                                    <div class="col-md-8" style="position:relative;">
                                        <div class="card-body">
                                            <div class="card-title rating-box" style="display:flex;">
                                                <div style='display:inline-block;' >
                                                    <img  style="object-fit:cover;width: 100px;height:100px;" class="rounded-circle" src="${f.user.photo}" alt="alt"/>
                                                    <p class="card-text"  style="text-align:center;">By: ${f.user.name}</p>
                                                </div>
                                                <c:forTokens items="1,2,3,4,5" delims="," var="star">
                                                    <span class="rating-star
                                                          <c:if test="${star<=f.star}">
                                                              full-star
                                                          </c:if>
                                                          <c:if test="${star>f.star}">
                                                              empty-star
                                                          </c:if>
                                                          ">
                                                    </span>
                                                </c:forTokens>


                                            </div> 
                                            <p style='text-align:justify;' class="card-text">${f.detail}</p>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                    <c:if test="${tf eq false}">
                        <tr><td>No feedback at all</td></tr>
                    </c:if>


                </div>
            </div>
            <!-- Hero End -->


            <!-- Newsletter Start -->
            <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">

            </div>
        </div>
    </div>
    <!-- Newsletter End -->
    <script>
        function checkDate() {
            var date = new Date(document.getElementById("dateExamination").value);
            var today = new Date();
          
            if (date < today) {
                document.getElementById("dateAlert").innerText = "Can not choose this date!";
                document.getElementById("dateAlert").style.color = "red";
                document.getElementById("dateExamination").value= null;
            } else {
                document.getElementById("dateAlert").innerText = "";
            }
            
            
        }
    </script>
    <jsp:include page="../component/bottom.jsp"></jsp:include>