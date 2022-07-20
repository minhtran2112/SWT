<%-- 
    Document   : list
    Created on : Jun 1, 2022, 8:05:08 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../component/top.jsp"></jsp:include>
    <style>
        .checked {
            color: orange;
        }
        .fstar{
            display: flex;
            flex-direction: row;
        }
        .Chatbox{
            word-wrap: break-word;
            text-transform: capitalize;
            word-break: break-word;
        }

    </style>
    <body>
        <!-- Navbar Start -->
        <nav  class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
            <a href="../home" class="navbar-brand p-0">
                <h1 class="m-0 text-primary"><img class="w-25 h-25" src="../frontend/assert/img/logo.ico" alt="">BaeCare</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="../home" class="nav-item nav-link active">Home</a>
                    <a href="frontend/assert/about.html" class="nav-item nav-link">About</a>
                    <a href="../service" class="nav-item nav-link">Service</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu m-0">
                            <a href="../frontend/assert/price.html" class="dropdown-item">Pricing Plan</a>
                            <a href="../frontend/assert/team.html" class="dropdown-item">Our Dentist</a>
                            <a href="../frontend/assert/testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="../frontend/assert/login.html" class="dropdown-item">Appointment</a>
                        </div>
                    </div>
                    <a href="../frontend/assert/contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <button type="button" class="btn text-dark" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fa fa-search"></i></button>
                <c:if test="${sessionScope.account eq null}">
                <a href="login" class="btn btn-primary py-2 px-4 ms-3">Login</a>
            </c:if>
            <c:if test="${sessionScope.account ne null}">
                <button class="btn btn-primary py-2 px-4 ms-3">Hi! ${sessionScope.account.name}</button>
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
                                        <h3 style="margin-left: 150px; margin-top: 30px; color: #00AEEF">Rated List</h3>
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
                        <div class="row">
                            <div class="col-sm-12">
                                <c:forEach items="${requestScope.listFB}" var="f">
                                    <c:if test="${f.fid ne null}">
                                        <div class="card mb-3">
                                            <div class="row g-0">
                                                <div class="col-md-4">
                                                    <img src="../${f.fphoto}" width="350px" class="img-fluid rounded-start" alt="..." style="margin-bottom: 30px; margin-left: 40px;">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="card-body">
                                                        <h5 class="card-title"> ${f.service.sname}<br>
                                                            <c:forEach begin="1" end="5" step="1" var="star">
                                                                <c:if test="${star<=f.star}">
                                                                    <span class="fa fa-star checked"></span>
                                                                </c:if>
                                                                <c:if test="${star>f.star}">
                                                                    <span class="fa fa-star"></span>
                                                                </c:if>
                                                            </c:forEach></h5>
                                                        <p class="card-text text-truncate Chatbox">${f.detail}</p>
                                                        <p class="card-text"><a class="btn btn-primary waves-effect waves-light" href="edit?fid=${f.fid}">Edit</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${f.fid eq null}">
                                        <h2>You have some examined services that have not feedback yet!</h2>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- Page body end -->
                </div>
            </div>
        </div>
    </div>


    <jsp:include page="../component/bottom.jsp"></jsp:include>

