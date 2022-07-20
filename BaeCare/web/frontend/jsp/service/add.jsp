<%-- 
    Document   : add
    Created on : May 22, 2022, 4:11:35 PM
    Author     : Administrator
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
        <a href="list">Back</a>
        <h2>Add Service</h2>

        <form action="add" method="Post" enctype="multipart/form-data">

                <table>
                    <tr>
                        <td>ID: ${requestScope.newid}</td>
                        <td>Service Type</td>

                        <td><input type="file" name="photo" required/></td>

                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <select name="type">
                                <c:forEach var="st" items="${requestScope.types}">
                                    <option value="${st.t_id}">${st.t_name}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Tittle:</td>
                        <td>Price:</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="sname"/></td>
                        <td><input type="number" name="price"></td>
                    </tr>
                    <tr>

                        <td>Sale Off</td>
                        <td>Status</td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sale"/></td>

                        <td>
                            <input type="radio"
                                   name="status" value="active">Active
                            <input type="radio"
                                   name="status" value="inactive">InActive
                        </td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="text" name="details"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Add Service"/></td>
                    </tr>
                </table>
        </form>
    </body>
</html>

