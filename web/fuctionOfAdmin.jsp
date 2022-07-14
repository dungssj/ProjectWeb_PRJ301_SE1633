<%-- 
    Document   : ListProduct
    Created on : Jun 22, 2022, 1:37:49 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>      
        <c:set value="${page}" var="age"></c:set>
        <c:forEach begin="${1}" end="${numpage}" var="item">
            <a href="product?xpage=${item}">${item}</a>
        </c:forEach>      
        <table border="1">
            <tr>
                <td>ProductID</td>
                <td>ProductName</td>
                <td>Unit</td>
                <td>Price</td>
                <td>Image</td>
            </tr>
            <c:forEach items="${list}" var="item"> 
                <tr>
                    <td>${item.getProductid()}</td>
                    <td>${item.getProductname()}</td>
                    <td>${item.getUnit()}</td>
                    <td>${item.getPrice()}</td>
                    <td><img src="${item.getImage()}" width="100"/></td>
                    <td><a href="Edit?id=${item.getProductid()}&mode=edit">Update</a></td>
                    <td><a href="Edit?id=${item.getProductid()}&mode=delete">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
