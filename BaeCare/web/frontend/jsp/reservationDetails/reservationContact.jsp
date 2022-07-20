<%-- 
    Document   : reservationContact
    Created on : Jun 4, 2022, 4:12:47 PM
    Author     : tkoko
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../component/top.jsp"></jsp:include>
    <script>
        function medicalRecordForm() {
            var number = document.getElementById("selectOption").value;
            document.getElementById("medicalRecordForm").innerHTML = "";
            var selectPeople = document.getElementsByClassName("choosePeople");

            for (var j = 0; j < selectPeople.length; j++) {

                selectPeople[j].innerHTML = '';

            }

            for (var i = 1; i <= number; i++) {
                document.getElementById("medicalRecordForm").innerHTML +=
                        '<div id="createFrom' + i + '" style="margin: 30px;" >'
                        + 'People ' + i + ' <br/>'
                        + 'Name:<input type="text" name="name' + i + '" placeholder="Full Name" style="margin-left: 18px"><span id="errorName' + i + '"></span><br/>'
                        + 'Gender:'
                        + '<input type="radio" name="gender' + i + '" value="male" checked="" style="margin-right:  5px;margin-left: 5px">Male'
                        + '<input type="radio" name="gender' + i + '" value="female" style="margin-right:  5px;margin-left: 5px">Female<br/>'
                        + 'Address:<input type="text" name="address' + i + '" placeholder="Address" style="margin-left: 2px"><span id="errorAddress' + i + '"></span> <br/>'
                        + 'Reason:<input type="text" name="reason' + i + '" placeholder="Reason For Hospitalization" style="margin-left: 8px"><span id="errorReason' + i + '"></span> <br/>'
                        + 'Phone:<input type="text" name="phone' + i + '" placeholder="Phone" style="margin-left: 15px"><span id="errorPhone' + i + '"></span> <br/>'
                        + '</div>  ';




            }


            for (var j = 0; j < selectPeople.length; j++) {
                for (var i = 1; i <= number; i++) {
                    selectPeople[j].innerHTML += '<option value=' + i + '>People ' + i + '</option>';
                }
            }


        }



    </script>
    <body >
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
    <!-- Navbar End -->
    <input type="submit" value="Change" onclick="back()" id="submitButton">
    <p id="notice">Click to return to page Reservation Details</p>
    <br/>
    <div>
        <form action="../Order" method="POST"  >
            Number of people examined
            <select  id="selectOption" name='selectOption' onchange="medicalRecordForm();">

                <c:forEach var="s" begin='1' end='${requestScope.listToOrder.size()}'>
                    <c:if test="${s==1}">
                        <option value="${s}" selected>${s}</option>
                    </c:if>
                    <c:if test="${s!=1}">
                        <option value="${s}">${s}</option>
                    </c:if>

                </c:forEach>
            </select>
            <div style="margin-bottom: 100px">



                <div style="display: flex;" id="medicalRecordForm">



                </div>
                <input style="margin-left: 30px" type="button" value="Save" onclick="chooseServiceToForm()">

                <div id="formOrder" style="display: none">
                    <table class="table table-striped table-class" id= "table-id" border="1px" style="margin-bottom: 100px">
                        <tr>
                            <td>Cardinal numbers</td>
                            <td>Service</td>
                            <td>Exam date</td>
                            <td>Original Price</td>
                            <td>Sale Price</td>
                            <td>Symptom</td>                
                            <td></td>

                        </tr>
                        <c:set var="total" value="0"></c:set>
                        <c:set var="index" value="1"></c:set>
                        <input type="text" hidden="" value="${requestScope.listToOrder.size()}" name="sizeList">
                        <c:forEach items="${requestScope.listToOrder}" var="c">
                            <input type="text" hidden="" value="${c.id}" name="cartId${index}">
                            <c:set var="total"  value="${total+c.service.sale_price}" ></c:set>
                                <tr>
                                    <td>${index}</td>
                                <td>${c.service.sname}
                                </td>
                                <td>${c.dateExam}</td>
                                <td>${c.service.original_price}</td>
                                <td>${c.service.sale_price}</td>
                                <td><textarea name="symptom${index}" placeholder="Symptom"></textarea><span id="errorSymptom${index}"></span></td>
                                <td>  <select class='choosePeople' name="people${index}" id="people${index}">

                                    </select>
                                    <input type="text" hidden="" value="${c.service.sid}" name="sid${index}">
                                </td>
                            </tr>
                            <c:set var="index" value="${index+1}"></c:set>
                        </c:forEach>
                        <tr>

                            <td>Total</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>${total} $</td>
                            <td></td>
                            <td>
                                <input type="submit" value="Submit" onclick="return checkOut(${requestScope.listToOrder.size()})">
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
        </form>
    </div>
</body>
<script>
    function checkPeople(selectOption, serviceCart) {

        const  peoples = [];
        for (var i = 1; i <= serviceCart; i++) {
            var people = parseInt(document.getElementById("people" + i).value);
            peoples.push(people);
        }
        for (var j = 1; j <= selectOption; j++) {
            let count = 0;
            for (var i = 0; i < peoples.length; i++) {
                if (peoples[i] === j) {
                    count++;
                }
            }
            if (count === 0) {
                return false;
            }
            count = 0;
        }
        return true;
    }
    function checkOut(serviceCart) {
        var selectOption = document.getElementById("selectOption").value;
        let result = true;
        for (var i = 1; i <= serviceCart; i++) {
            //validate symptom
            var symptom = document.getElementsByName("symptom" + i)[0].value;
            if (validateSymptom(symptom)) {
                document.getElementById("errorSymptom" + i).innerHTML = "";
            } else {
                result = false;
                document.getElementById("errorSymptom" + i).innerHTML = "Symptom not empty";
            }
        }
        if (result) {
            var check = checkPeople(selectOption, serviceCart);
            if (check) {
                return true;
            } else {
                //thong bao cho nguoi dung la co form chua chon dich vu
                alert("There is a form that has not yet selected the service please choose again");
                return false;
            }
        }
        return false;
    }

    function setSession(selectOption) {
        $.ajax({
            data: {

                selected: selectOption
            },
            url: "/BaeCare/getPeopleNumber",
            type: "get",
            success: function (response) {
                console.log(response);
                var detailList = document.getElementById("doctorTable");
                if (response === null) {
                    detailList.innerHTML = "<tr>All doctors is not available in this day</tr>";
                } else {
                    detailList.innerHTML = response;
                }


            },
            error: function (xhr) {

            }
        });
    }
    function test() {
        var option = document.getElementById("selectOption").value;
        for (var i = 1; i <= option; i++) {
            var name = document.getElementsByName("name" + i)[0].value;
            var address = document.getElementsByName("address" + i)[0].value;
            var symptom = document.getElementsByName("symptom" + i)[0].value;
            alert(name + address + symptom);
        }
    }

    function chooseServiceToForm() {
        var option = document.getElementById("selectOption").value;
        let result = true;
        for (var i = 1; i <= option; i++) {
            //validate name
            var name = document.getElementsByName("name" + i)[0].value;
            if (validateName(name)) {
                document.getElementById("errorName" + i).innerHTML = "";
            } else {
                result = false;
                document.getElementById("errorName" + i).innerHTML = "Name invalid";
            }
            //validate address
            var address = document.getElementsByName("address" + i)[0].value;
            if (validateAddress(address)) {
                document.getElementById("errorAddress" + i).innerHTML = "";
            } else {
                result = false;
                document.getElementById("errorAddress" + i).innerHTML = "Address invalid";
            }
            //validate reason for hospitalization
            var reason = document.getElementsByName("reason" + i)[0].value;
            if (validateAddress(reason)) {
                document.getElementById("errorReason" + i).innerHTML = "";
            } else {
                result = false;
                document.getElementById("errorReason" + i).innerHTML = "Reason invalid";
            }
            //validate phone
            var reason = document.getElementsByName("phone" + i)[0].value;
            if (validatePhone(reason)) {
                document.getElementById("errorPhone" + i).innerHTML = "";
            } else {
                result = false;
                document.getElementById("errorPhone" + i).innerHTML = "Phone invalid";
            }

        }
        if (result) {
            document.getElementById("formOrder").style.display = "block";
            //hien thi service cho ng dung chon ai kham service nao 
        }
    }
    function validatePhone(phone) {
        let regexPhone = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
        if (regexPhone.test(phone))
            return true;
        else
            return false;
    }
    function validateSymptom(symptom) {
        let regexSymptom = /^[a-zA-Z0-9\s,.'-]{3,}$/;
        if (regexSymptom.test(symptom))
            return true;
        else
            return false;
    }
    function validateAddress(address) {
        let regexAddress = /^[a-zA-Z0-9\s,.'-]{3,}$/;
        if (regexAddress.test(address))
            return true;
        else
            return false;
    }
    function validateName(name) {
        let regexName = /^(([A-Za-z]+[\-\']?)*([A-Za-z]+)?\s)+([A-Za-z]+[\-\']?)*([A-Za-z]+)?$/;
        if (regexName.test(name))
            return true;
        else
            return false;
    }
    function createFrom(index, all) {
        for (var i = 1; i <= all; i++) {
            document.getElementById("createFrom" + i).style.display = "none";
        }
        for (var i = 1; i <= index; i++) {
            document.getElementById("createFrom" + i).style.display = "block";
        }

    }
    function back() {
        window.location = "../Reservation";
    }

    window.onload = medicalRecordForm();
</script>

<jsp:include page="../component/bottom.jsp"></jsp:include>