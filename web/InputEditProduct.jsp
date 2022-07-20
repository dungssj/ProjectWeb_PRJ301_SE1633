<%-- 
    Document   : ProducDetail
    Created on : Jul 17, 2022, 9:33:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Edit">
            <input type="text" name="id" value="${pro.getProductID()}" hidden="">
            <br>ProductName:<input type="text" name="name" value="${pro.getProductName()}">
            <br>Amount:<input type="text" name="amount" value="${pro.getAmount()}">
            <br>Price<input type="text" name="price" value="${pro.getPrice()}">
            <br>Discount:<input type="text" name="discount" value="${pro.getDiscount()}">
            <br><input type="submit" name="update" value="Update">
        </form>
    </body>
</html>
