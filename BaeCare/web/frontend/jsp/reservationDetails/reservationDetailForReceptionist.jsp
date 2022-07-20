<%-- 
    Document   : reservationDetail
    Created on : Jul 8, 2022, 1:15:11 PM
    Author     : tkoko
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--medicalRecord id-->
        <c:forEach items="${requestScope.medicalRecords}" var="o">
            <div>
                Id:<input type="text" value="${o.id}"> <br/>
                Name:<input type="text" value="${o.userName}"> <br/>
                Gender:<input type="text" value="${o.gender}"> <br/>
                address<input type="text" value="${o.address}"> <br/>
                reasonForHospitalization<input type="text" value="${o.reasonForHospitalization}"> <br/>
                phone<input type="text" value="${o.phone}"> 
            </div>
            <br/>
        </c:forEach>
    </body>
</html>
