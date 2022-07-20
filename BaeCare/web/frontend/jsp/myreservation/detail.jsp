<%-- 
    Document   : detail
    Created on : Jun 14, 2022, 9:07:36 PM
    Author     : Administrator
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../component/top.jsp"></jsp:include>
    <body>
        <script>
            function viewService(id)
            {
                window.location.href = "../servicedetail?sId=" + id;
            }
        </script>
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

        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="row align-items-end">
                                <div class="col-lg-8">
                                    <div class="page-header-title">
                                        <div class="d-inline">
                                            <h3 style="margin-left: 100px; margin-top: 30px; color: #00AEEF">My Reservation</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="page-header-breadcrumb">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <!-- Page body start -->
                        <div class="page-body">
                            <!-- Row Created Callback table start -->
                            <div class="card">
                                <div class="card-header">
                                    <h5 style="margin-left: 250px;">Order Number: ${requestScope.oid}</h5>
                            </div>
                            <div class="card-block">
                                <div class="table-responsive dt-responsive">
                                    <c:if test="${requestScope.order != null}">
                                        <c:forEach items="${requestScope.order}" var="od">
                                            <table id="row-callback" ondblclick="viewService(${o.oid})" class="table table-striped table-bordered nowrap" style="width: 700px; margin: 40px auto;">
                                                <tbody>
                                                    <tr>
                                                        <td>Booking id</td>
                                                        <td>${od.odId}</td>
                                                        <td rowspan="6">
                                                            <img onclick="viewService(${od.service.sid})" src="../${od.service.photo}" width="250px" alt="Service"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Booking Date</td>
                                                        <td>${od.examDate}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Doctor Examined</td>
                                                        <td>
                                                            ${od.doctor.name}
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Time Finished</td>
                                                        <td>${od.checkoutDate}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Total Cost</td>
                                                        <td>${od.price}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Status</td>
                                                        <td>${od.examStatus == true ?"Examined":"Not Examined yet"}</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </c:forEach>
                                        <div style="margin-left: 700px; margin-bottom: 20px;">
                                            <a href="list" ><button class="btn btn-primary waves-effect waves-light">Cancel</button></a>
                                        </div>

                                    </c:if>
                                    <c:if test="${requestScope.order.size() == 0}">
                                        <h3 style="margin: 50px auto; text-align: center;">You have not added any orders to your list yet</h3>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        <!-- Row Created Callback table end -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page body end -->

    <jsp:include page="../component/bottom.jsp"></jsp:include>

