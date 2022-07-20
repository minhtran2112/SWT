<%-- 
    Document   : OrderDetail
    Created on : Jul 11, 2022, 8:36:25 PM
    Author     : chitung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1px">
            <tr>
                <td>Doctor Name</td>
                <td>Examine Date</td>
                <td>Price</td>
                <td>Symptom</td>
                <td>Ordinal Number</td>
            </tr>
            
            <c:forEach items="${requestScope.orderDetail}" var="o"><tr>
                <td>${o.doctor.name}</td>
                <td>${o.examDate}</td>
                <td>${o.price}</td>
                <td>${o.symptom}</td>
                <td>${o.ordinalNumber}</td></tr>
            </c:forEach>
            
        </table>
        <button><a href="Order">Back To Order</a></button>
    </body>
</html>
