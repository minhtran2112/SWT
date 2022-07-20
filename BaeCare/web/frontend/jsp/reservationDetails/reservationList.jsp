<%-- 
    Document   : reservationContact
    Created on : Jun 4, 2022, 4:12:47 PM
    Author     : tkoko
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../component/top.jsp"></jsp:include>
        <head>
            <style>
                .centerrr td{
                    padding-right: 80px;
                }
                .orderDetail tr td{
                    padding-right: 80px;
                }
            </style>
        </head>

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

        <div style="margin-bottom:  50px">
            <form action="list" method="GET" >
                Status:<select id="status" name="status" onchange="return submit()">
                    <option value="-1"
                            <c:if test="${requestScope.status eq -1}">
                                selected=""
                            </c:if>
                            >All</option>
                    <option value="0"
                            <c:if test="${requestScope.status eq 0}">
                                selected=""
                            </c:if>
                            >Incomplete</option>
                    <option value="1"
                            <c:if test="${requestScope.status eq 1}">
                                selected=""
                            </c:if>
                            >Complete</option>
                </select>
                From:<input id="from" type="date" name="from" value="${requestScope.from}">
                To:<input id="to" type="date" name="to" value="${requestScope.to}">
                <input id="search" type="text" name="search" placeholder="search" value="${requestScope.search}">
                <input type="submit" value="Submit">
            </form>
            <a href="#" style="font-size: 20px">Add</a>
            <div>
                <table class="table table-striped table-class" id= "table-id" border="1px" style="margin-bottom: 100px">
                    <tr>
                        <td style="text-align: center" >Order Information</td>
                        <td>Status</td>
                    </tr>
                    <c:set var="index" value="1"></c:set>
                    <c:forEach items="${requestScope.orders}" var="o">
                        <tr>
                            <td>
                                <table>
                                    <tr class="centerrr">
                                        <td>Ordinal number</td>
                                        <td>Name</td>
                                        <td style="padding-right: 200px">Email</td>
                                        <td>Total Price</td>
                                        <td><input value="See More" type="button" onclick="SeeMore(${o.oid})"></td>
                                        <td><a href="detail?oid=${o.oid}" style="font-size: 20px">View Details</a></td>
                                    </tr>
                                    <tr>
                                        <td>${index}</td>
                                        <c:if test="${o.customer != null}">
                                            <td>${o.customer.name}</td> 
                                            <td>${o.customer.email}</td> 
                                        </c:if>
                                        <c:if test="${o.customer eq null}">
                                            <td>Emtpy</td> 
                                            <td>Emtpy</td> 
                                        </c:if>
                                        <td>${o.totalPrice}</td> 
                                    </tr>
                                </table>
                            </td>

                            <c:if test="${o.status eq true}">
                                <td>Complete</td>
                            </c:if>
                            <c:if test="${o.status eq false}">
                                <td>Incomplete
                                    <form action="list"  method="POST">
                                        <input hidden="" type="text" name="idUpdateStatus" value="${o.oid}">
                                        <input type="submit" value="Change status" onclick=" return ChangeStatus()">
                                        <input hidden=""  type="text" name="status" value="${requestScope.status}"  >
                                        <input hidden=""  type="date" name="from" value="${requestScope.from}" >
                                        <input hidden=""   type="date" name="to" value="${requestScope.to}" >
                                        <input hidden=""   type="text" name="search" value="${requestScope.search}" >
                                    </form>
                                </td>
                            </c:if>
                        </tr>
                        <tr>
                            <td>
                                <table class="orderDetail" id="orderDetail${o.oid}" style="display: none">
                                    <tr>
                                        <td>Service</td>
                                        <td>Examine Date</td>
                                        <td>Doctor</td>
                                        <td>Ordinal Number</td>
                                        <td>Name patient</td>
                                        <td>Phone</td>
                                    </tr>  
                                    <c:forEach items="${o.orderDetail}" var="od">
                                        <tr>
                                            <td>${od.service.sname}</td>
                                            <td>${od.examDate}</td>
                                            <td>${od.doctor.name}</td>
                                            <td>${od.ordinalNumber}</td>
                                            <td>${od.medicalRecord.userName}</td>
                                            <td>${od.medicalRecord.phone}</td>
                                        </tr>  
                                    </c:forEach>
                                </table>  
                            </td>
                            <td></td>
                        </tr>
                        <c:set var="index" value="${index+1}"></c:set>
                    </c:forEach>

                </table>
            </div>
        </div>

    </body>
    <script>
        
        if (${requestScope.notice eq true}) {
            setTimeout(delayLoad, 100);
        }
        function delayLoad() {
            alert("Status order details is incomplete");
        }
        function ChangeStatus() {
            var result = confirm("Confirm the customer has paid");
                 return result;
        }
        function SeeMore(oid) {
            if (document.getElementById("orderDetail" + oid).style.display === "none") {
                document.getElementById("orderDetail" + oid).style.display = "block";
            } else {
                document.getElementById("orderDetail" + oid).style.display = "none";
            }


        }
        function submit() {
            return true;
        }
    </script>
</html>
<jsp:include page="../component/bottom.jsp"></jsp:include>