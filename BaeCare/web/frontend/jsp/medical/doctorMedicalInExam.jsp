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

        function visibleMedicine(odId) {
            document.getElementById("medicineTab" + odId).style.display = "block";
        }

        function disableMedicine(odId) {
            document.getElementById("medicineTab" + odId).style.display = "none";
        }

        function chooseMedicine(tr, odId) {
            var tbody = document.getElementById("medicineTable" + odId);
            var td = tr.getElementsByTagName("td");
            var id = td[0].innerText;
            var name = td[1].innerText;
            var choosen = td[2];
            var row = tbody.insertRow(tbody.length);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var cell3 = row.insertCell(2);
            var cell4 = row.insertCell(3);
            var cell5 = row.insertCell(4);
            var cell6 = row.insertCell(5);
            cell1.innerHTML = "<strong>" + id + "</strong><input type='hidden' name='medicineId" + id + "' value='" + id + "'>";
            cell2.innerHTML = "<strong class='text-wrap'>" + name + "</strong><input type='hidden' name='medicineName" + id + "' value='" + name + "'>";
            cell3.innerHTML = "<input class='form-control text-center' name='medicineQuantity" + id + "' min='1' type='number' value='1' required/>";
            cell4.innerHTML = "<p>Vien</p>";
            cell5.innerHTML = "<textarea class='form-control' name='medicinePrescript" + id + "' required></textarea>";
            cell6.innerHTML = "<i style='cursor:pointer' onclick='removeMedicine(this," + odId + ")' class='bi bi-x'></i>";

            tr.style = "background-color: rgba(250, 250, 250, 0.801);color:black;pointer-events: none !important;";


            choosen.innerHTML = "<i class='bi bi-check-circle-fill'></i>";
        }

        function searchMedicine(odId) {

            var value = document.getElementById("searchMedicine" + odId).value.toLowerCase();

            $("#suggestMedicine" + odId + " tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });



        }
        function removeMedicine(deleteIcon, odId) {

            var td = deleteIcon.parentNode.parentNode.getElementsByTagName("td");
            var id = td[0].innerText;



            var row = document.getElementById(odId + "medicineOption" + id);
            row.removeAttribute("style");
            row.removeAttribute("class");

            row.getElementsByTagName("td")[2].innerHTML = "<i class='bi bi-check-circle'></i>";
            var index = deleteIcon.parentNode.parentNode.rowIndex;
            document.getElementById("medicineTable" + odId).deleteRow(index - 1);

        }
        function checkMedicineTable(mId, odId) {
            var tbody = document.getElementById("medicineTable" + odId);
            var tr = document.getElementById(odId + "medicineOption" + mId);
            if (tbody.innerHTML.includes(mId)) {
                tr.setAttribute("class", "row-choosed");
                tr.getElementsByTagName("td")[2].innerHTML = "<i class='bi bi-check-circle-fill'></i>";
            } else {
                tr.removeAttribute("class");
                tr.getElementsByTagName("td")[2].innerHTML = "<i class='bi bi-check-circle'></i>";
            }
        }
        function submitForm(odId) {

            if (document.getElementById("medicineTable" + odId).innerHTML.trim() == "") {
                var a = confirm("Submit with no medicine for this people?");
                if (a) {
                    document.getElementById("medicalPrescript" + odId).submit();
                }
            }
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

        details {
            transition: linear 0.5s;
        }

        td {
            text-align: center;

        }

        #medicineTab {
            transition: ease-in-out 1s;
            border-radius: 3px;
        }

        .row-choosed {
            background-color: rgba(250, 250, 250, 0.801);
            color: black;
            pointer-events: none !important;
        }
        #pagination button{
            margin:0 5px;
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
                    <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link ">Home</a>
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
                    <a href="${pageContext.request.contextPath}/doctor/exam" class="nav-item nav-link active">Examine and Medical</a>
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
                <h1 class="display-3 text-white animated zoomIn">After Examination View</h1>
            </div>
        </div>
        <div class="container ">
            <div class="row">


                <form>
                    <div class="col-lg-12 row">
                        <div class="col-lg-1"></div>
                        <div class="col-lg-2">
                            <label style='color:white;'>Order number</label>
                            <input oninput="searchOrderDetail()" class="form-control" pattern="[0-9]" type="number" min="1" id='searchOrderNumber' placeholder="Search">
                        </div>
                        <div class="col-lg-5">
                            <label style='color:white;'></label>
                            <input oninput="searchOrderDetail()" class="form-control" type="text" id='searchName' placeholder="Type in name/service/medicine... to search">

                        </div>

                        <div class="col-lg-3">
                            <label style='color:white;'>Exam date</label>
                            <input onchange='searchOrderDetail()' class="form-control" type="date"  id='searchDate' placeholder="Search by examination date">

                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Appointment Start -->
    <div class="mt-2 mb-5 page-body container" style="margin-top: 10px;">
        <div class="row paginate">
            <div class='col-lg-4 text-left'>
                <button id='prev' class='btn btn-primary'><i class='bi bi-caret-left-fill'></i></button>
            </div>
            <div class='col-lg-4  text-center' id='pagination'>

            </div>
            <div style="text-align:right;" class='col-lg-4'>
                <button id='next' class='btn btn-primary'><i class='bi bi-caret-right-fill'></i></button>
            </div>



        </div>
        <div class="row" id='contentExam'>
            <h5 class="card-title">${msg}</h5>
            <c:forEach items="${listOrder}" var="od">
                <form id="medicalPrescript${od.odId}" action="${pageContext.request.contextPath}/doctor/exam" method="post">
                    <input type="hidden" name="odId" value="${od.odId}">
                    <div class="col-lg-12">
                        <div class="card text-bg-info mb-3">
                            <div style="padding-left: 0; padding-right: 0;margin-left:0;margin-right:0" class="card-header row">
                                <div class="col-lg-2">
                                    <p>Order number: ${od.ordinalNumber}</p>
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
                                <div class="col-lg-2">

                                </div>


                            </div>
                            <div class="card-body row">
                                <div>
                                    <div class="text-center">

                                        <h5 class="card-title">Service: ${od.service.sname}</h5>

                                    </div>
                                    <div>
                                        <h5 class="card-title">Doctor: ${od.doctor.name}</h5>
                                        <h5 class="card-title">Customer: ${od.medicalRecord.userName}</h5>
                                        <h5 class="card-title">Customer phone: ${od.medicalRecord.phone}</h5>
                                        <p class="card-text" style="font-weight:bold">Examination Date: ${od.examDate}</p>
                                        <p class="card-text"><strong>Reason to go to examination </strong> </p>
                                        <textarea name="reasonToExam" class="form-control" rows="1" required>${od.medicalRecord.reasonForHospitalization}</textarea>
                                        <p class="card-text"><strong>Symptom:</strong> </p>
                                        <textarea name="symptom" class="form-control" rows="1" required>${od.symptom}</textarea>
                                        <p class="card-text"><strong>Medical history: </strong> </p>
                                        <textarea name="medicalHistory-${od.medicalRecord.id}" class="form-control" rows="1" required>${od.medicalRecord.medicalHistory}</textarea>
                                        <p class="card-text"><strong>Pre-history: </strong> </p>
                                        <textarea name="preHistory" class="form-control" rows="1" required>${od.medicalRecord.preHistory}</textarea>
                                        <p style="font-weight: bold">Examination Result:</p>


                                        <textarea name="resultNote" class="form-control" rows="4" cols="55" required>${od.resultNote}</textarea><br>
                                    </div>
                                    <div>

                                        <p class="card-text" style="font-weight:bold">
                                            Medicine:
                                        </p>



                                        <table class="table  table-striped text-center">
                                            <thead>

                                                <tr>

                                                    <th>
                                                        Medicine ID
                                                    </th>
                                                    <th>
                                                        Medicine Name
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
                                            </thead>
                                            <tbody id="medicineTable${od.odId}">




                                                <c:forEach items="${od.medicinePrescript}" var="mp">


                                                    <tr>
                                                        <td>

                                                            <strong>${mp.medicine.id}</strong>
                                                            <input type="hidden" name="medicineId${mp.medicine.id}" value="${mp.medicine.id}">
                                                        </td>
                                                        <td>

                                                            <strong class="text-wrap">${mp.medicine.name}</strong>
                                                            <input type="hidden" name="medicineName${mp.medicine.id}" value="${mp.medicine.name}">
                                                        </td>
                                                        <td style="width:8%">
                                                            <input class="form-control text-center" name="medicineQuantity${mp.medicine.id}" min="1" type="number" value="${mp.quantity}" required/>

                                                        </td>
                                                        <td>
                                                            <p>${mp.medicine.unit}</p>

                                                        </td>
                                                        <td>
                                                            <textarea class="form-control" name="medicinePrescript${mp.medicine.id}" required>${mp.prescription}</textarea>

                                                        </td>
                                                        <td style="width:5%">
                                                            <i style="cursor:pointer;" class="bi bi-x" onclick="removeMedicine(this,${od.odId})"></i>
                                                        </td>
                                                    </tr>


                                                </c:forEach>


                                            </tbody>
                                        </table>

                                    </div>
                                </div>

                            </div>

                            <div class="row position-relative mb-3">
                                <div class="col-lg-6">
                                    <input id="searchMedicine${od.odId}" onClick="visibleMedicine(${od.odId})" oninput="searchMedicine(${od.odId})" type="text" class="form-control " placeholder="Search medicine by ID or Name to add"> 

                                </div>
                                <div id="medicineTab${od.odId}" style="background-color: white;right:0;bottom:0;display:none;padding-left:0;padding-right:0;" class="col-lg-6 position-absolute card">
                                    <div class="content">
                                        <table  style="margin-bottom:0;" class="table table-info table-hover">

                                            <tbody id="suggestMedicine${od.odId}">


                                                <c:forEach items="${medicineList}" var="m">

                                                    <tr onClick="chooseMedicine(this, '${od.odId}');" id="${od.odId}medicineOption${m.id}">
                                                        <td>
                                                            ${m.id}
                                                        </td>
                                                        <td>
                                                            ${m.name}
                                                        </td>
                                                        <td>
                                                            <i class="bi bi-check-circle"></i>
                                                        </td>
                                                    </tr>

                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="close text-center">
                                        <button onclick="disableMedicine(${od.odId})" class="btn btn-primary"><i class="bi bi-x"></i></button>
                                    </div>
                                </div>
                            </div>


                            <div class="row text-center">
                                <div class="col-lg-12">
                                    <button form="medicalPrescript${od.odId}" type="submit" class="btn btn-primary text-center">
                                        Submit
                                    </button> 
                                </div>






                            </div>

                        </div>
                    </div>
                    <script>
                        <c:forEach items="${medicineList}" var="m">

                        window.onload = checkMedicineTable('${m.id}',${od.odId});

                        </c:forEach>
                    </script>
                </form>
            </c:forEach>


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
    <script src='${pageContext.request.contextPath}/frontend/assert/js/doctorMedicalExamJS.js' type="text/javascript"></script>
    <script>
                        function next(page) {
                            goTo(page + 1);
                        }
                        function prev(page) {
                            goTo(page - 1);
                        }
                        function dataPaginate() {
                            var a = document.getElementById("contentExam");
                            var b = a.getElementsByTagName("form");
                            var c = new Array();
                            for (var i = 0; i < b.length; i++) {
                                if (b[i].style.display !== 'none') {
                                    c.push(b[i]);
                                }
                            }

                            return c;
                        }
                        function addPageButton(page) {
                            var button = "<button id='page" + page + "' onclick='goTo(" + page + ")' class='btn btn-primary'>" + page + "</button>";
                            return button;
                        }
                        var totalPage;
                        var toSet = dataPaginate();
                        function generatePaginationButton() {
                            var pageSize = 1;
                            var dataSource = toSet;

                            if (dataSource.length % pageSize === 0) {
                                totalPage = dataSource.length / pageSize;
                            } else {
                                totalPage = dataSource.length / pageSize + 1;
                            }


                            document.getElementById("pagination").innerHTML = "";
                            for (var i = 1; i <= totalPage; i++) {
                                document.getElementById("pagination").innerHTML += addPageButton(i);
                            }
                            goTo(1);
                            if (totalPage > 0) {
                                document.getElementById("page" + 1).setAttribute("class", "btn btn-primary disabled");
                            }



                        }
                        function next(page) {
                            goTo(page + 1);
                        }
                        function prev(page) {
                            goTo(page - 1);
                        }

                        function enableButton(except, dataLength) {
                            if (except > 1) {
                                document.getElementById("prev").style.display = 'inline-block';
                                document.getElementById("next").style.display = 'none';
                            } else {
                                document.getElementById("prev").style.display = 'none';
                                document.getElementById("next").style.display = 'inline-block';
                            }
                            if (except < dataLength) {
                                document.getElementById("next").style.display = 'inline-block';
                            } else {
                                document.getElementById("next").style.display = 'none';
                            }

                            if (except > 0 && dataLength !== 0) {
                                document.getElementById("page" + except).setAttribute("class", "btn btn-primary disabled");
                                for (var i = 1; i <= dataLength; i++) {

                                    if (except !== i) {
                                        document.getElementById("page" + i).setAttribute("class", "btn btn-primary");
                                    }

                                }
                            }



                        }

                        function goTo(page) {
                            var pageSize = 1;

                            var dataLength = toSet.length;

                            if (toSet.length % pageSize === 0) {
                                totalPage = toSet.length / pageSize;
                            } else {
                                totalPage = toSet.length / pageSize + 1;
                            }


                            var start = (page - 1) * pageSize;
                            if (pageSize === 1) {
                                for (var i = 0; i < dataLength; i++) {
                                    if (i !== start) {
                                        toSet[i].style.display = 'none';
                                    } else {
                                        toSet[i].style.display = 'block';
                                    }

                                }


                            } else {
                                var end = start + pageSize;
                                if (end > dataLength) {
                                    end = pageSize;
                                }
                                for (var i = 0; i < dataLength; i++) {
                                    if (i < start || i > end) {
                                        toSet[i].style.display = 'none';
                                    } else {
                                        toSet[i].style.display = 'block';
                                    }
                                }
                            }
                            document.getElementById("prev").setAttribute("onclick", "prev(" + page + ")");
                            document.getElementById("next").setAttribute("onclick", "next(" + page + ")");


                            enableButton(page, totalPage);

                        }





                        function searchOrderDetail() {
                            var textSearch = document.getElementById("searchName").value.toLowerCase();
                            var dateSearch = document.getElementById("searchDate").value.toLowerCase();
                            var orderNumber = document.getElementById("searchOrderNumber").value.toLowerCase();
                            var orderNumberSearch = ("Order number: " + orderNumber).toLowerCase();

                            $("#contentExam form").filter(function () {

                                if (dateSearch !== undefined) {
                                    if (orderNumberSearch.trim() !== "Order number:") {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(textSearch) > -1
                                                && $(this).text().toLowerCase().indexOf(dateSearch) > -1
                                                && $(this).text().toLowerCase().indexOf(orderNumberSearch) > -1);
                                    } else {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(textSearch) > -1
                                                && $(this).text().toLowerCase().indexOf(dateSearch) > -1
                                                );
                                    }



                                } else {
                                    if (orderNumberSearch.trim() !== "Order number:") {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(textSearch) > -1
                                                && $(this).text().toLowerCase().indexOf(orderNumberSearch) > -1);
                                    } else {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(textSearch) > -1);
                                    }



                                }


                            });
                            toSet = dataPaginate();
                            generatePaginationButton();
                        }

                        generatePaginationButton();
    </script>
    <jsp:include page="../component/bottom.jsp"></jsp:include>