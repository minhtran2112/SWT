<%-- 
    Document   : customerMedical
    Created on : Jun 30, 2022, 1:10:23 PM
    Author     : nhiep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
    <script>
        function checkAllService() {
            if (document.getElementById("checkAllService").checked == true) {
                checkboxes = document.getElementsByName('serviceSelect');
                for (var i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].checked = true;
                }
            } else {
                checkboxes = document.getElementsByName('serviceSelect');
                for (var i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].checked = false;
                }
            }
        }

        function deleteCart(id) {
            var result = confirm("Are you sure?");
            if (result) {
                window.location.href = "deleteCart?serviceID=" + id;
            }
        }
        function loadMedicine(mid, odId) {
            var mId = mid.value;
            $.ajax({
                data: {

                    odId: odId
                },
                url: "/BaeCare/loadMedicine",
                type: "get",
                success: function (response) {

                    var detailList = document.getElementById("medicine" + odId);
                    if (response == null) {
                        detailList.innerHTML = "";
                    } else {
                        detailList.innerHTML = response;
                    }


                },
                error: function (xhr) {

                }
            });
        }

    </script>

    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        /* Firefox */
        input[type=number] {
            -moz-appearance: textfield;
        }
        label{
            color:white;
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
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
            <a href="home" class="navbar-brand p-0">
                <h1 class="m-0 text-primary"><img class="w-25 h-25" src="frontend/assert/img/logo.ico" alt="">BaeCare</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="home" class="nav-item nav-link ">Home</a>
                    <a href="slide" class="nav-item nav-link">News</a>
                    <a href="service" class="nav-item nav-link ">Service</a>
                    <a href="post" class="nav-item nav-link ">Post</a>
                <c:if test="${sessionScope.account ne null}">
                    <a href="Reservation" class="nav-item nav-link active">Service Cart</a>
                </c:if>

            </div>


            <c:if test="${sessionScope.account eq null}">
                <a href="login" class="btn btn-primary py-2 px-4 ms-3">Login</a>
            </c:if>
            <c:if test="${sessionScope.account ne null}">
                <button class="btn btn-primary py-2 px-4 ms-3">Hi! ${sessionScope.account.name}</button>
                <a href="logout" class="btn btn-primary py-2 px-4 ms-3">Logout</a>
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
                <h1 class="display-3 text-white animated zoomIn">After Examination View</h1>
            </div>
        </div>
        <div class="row ">
            <form>
                <div class="col-lg-12 row">

                    <div class="col-lg-3">
                        <label class='card-title'>Search by Customer's Name:</label>
                        <input class="form-control" type="search" placeholder="Enter to search">

                    </div>
                    <div class="col-lg-3">
                        <label class='card-title'>Search by Medicine:</label>
                        <input class="form-control" type="search" placeholder="Enter to search">

                    </div>
                    <div class="col-lg-3">
                        <label class='card-title'>Search by Service:</label>
                        <input class="form-control" type="search" placeholder="Enter to search">

                    </div>
                    <div class="col-lg-3">
                        <label class='card-title'>Search by Examination Date:</label>
                        <input class="form-control" type="date" placeholder="Enter to search">

                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Hero End -->
    <style>
        details{
            transition: linear 0.5s;
        }
    </style>
    <!-- Appointment Start -->
    <div class="mt-2 mb-5 page-body container" style="margin-top: 10px;">
        <div class="row">

        </div>
        <div class="row">

            <c:forEach items="${listOrder}" var="od">


                <div  class="col-lg-12">
                    <div class="card text-bg-info mb-3">
                        <div style="padding-left: 0; padding-right: 0;margin-left:0;margin-right:0" class="card-header row">
                            <div class="col-lg-2">
                                <p>Order number: ${od.medicalRecord.ordinalNumber}</p>
                            </div>
                            <div class="col-lg-8 text-center">
                                <c:if test="${od.examStatus == true}">
                                    Examined in
                                </c:if>
                                <c:if test="${od.examStatus == false}">
                                    Examination scheduled in
                                </c:if>
                                ${od.examDate}
                            </div>



                        </div>
                        <div class="card-body row">
                            <div style="border-right:1px solid black" class="col-lg-5">
                                <h5 class="card-title">Customer: ${od.medicalRecord.userName}</h5>
                                <h5 class="card-title">Service: ${od.service.sname}</h5>
                                <h5 class="card-title">Doctor: ${od.doctor.name}</h5>
                                <p class="card-text"><strong>Symptom:</strong> ${od.medicalRecord.symptom}</p>




                                <p style="font-weight: bold">Examination Result:</p>




                                <c:if test="${od.examStatus == false}">
                                    <p class="card-text">**Please complete result note after examine**</p>
                                </c:if>
                                <textarea class="form-control" rows="4" cols="55" required>${od.resultNote}</textarea><br>
                                <button class="btn btn-primary">Submit exam result</button>
                            </div>
                            <div class="col-lg-7 position-relative">
                                <div class="position-absolute ">
                                    <table class="table">

                                    </table>
                                </div>
                                <p style="font-weight: bold">Medicine:  
                                    <c:if test="${od.medicalStatus==false}">
                                        You still not add medical prescript for this case. Please complete!!
                                    </c:if>
                                    <c:if test="${od.medicalStatus==true&&od.medicalPrescript.size()==0}">
                                        No medical
                                    </c:if>
                                </p>
                                <input type="search" class="form-control mb-2" placeholder="Search a medicine to add">


                                <table class="table  table-bordered text-center">
                                    <tr>

                                        <th>
                                            Medicine 
                                        </th>
                                        <th>
                                            Quantity
                                        </th>
                                        <th>
                                            Unit
                                        </th>
                                        <th>
                                            Manual
                                        </th>
                                        <th>

                                        </th>
                                    </tr>
                                    <form action="">
                                        <tr>
                                            <c:forEach items="${od.medicinePrescript}" var="mp">



                                                <td>

                                                    <strong>${mp.medicine.id}</strong>

                                                </td>
                                                <td>
                                                    <input style="width:60px;" class="form-control" min="1" type="number" value="${mp.quantity}" required/>
                                                </td>
                                                <td>
                                                    <input style="width:100px;" class="form-control" type="text" value="${mp.quantity}" required/>
                                                </td>
                                                <td>
                                                    <textarea class="form-control" required>${mp.prescription}</textarea>
                                                </td>
                                                <td>
                                                    <button class="btn btn-warning"><i class="bi bi-x-circle-fill"></i></button>
                                                </td>

                                            </c:forEach>
                                        </tr>
                                    </form>

                                </table>

                                <button class="btn btn-primary">
                                    Submit medical prescript
                                </button> 

                            </div>

                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
        <div class="row paginate text-center">
            <div class='col-lg-4'>

            </div>
            <div class='col-lg-4'>
                <button class='btn btn-primary'>1</button>
                <button class='btn btn-primary'>1</button>
                <button class='btn btn-primary'>1</button>
                <button class='btn btn-primary'>1</button>
                <button class='btn btn-primary'>1</button>
            </div>
            <div class='col-lg-4'>

            </div>



        </div>
    </div>
    <!-- Appointment End -->

    <!-- Newsletter Start -->
    <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">
        <div class="container">
            <!--            <div class="bg-primary p-5">
    <form class="mx-auto" style="max-width: 600px;">
        <div class="input-group">
            <h4 style="text-align: center">Have Nice Day</h4>
        </div>
    </form>
    </div>-->
        </div>
    </div>
    <!-- Newsletter End -->
    <jsp:include page="../component/bottom.jsp"></jsp:include>
