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
        <form>
            ProductID:<input type="text" value="${id}" name="id">
            <br>ProductName:<input type="text" name="name">
            <br>Amount:<input type="text" name="unit">
            <br>Price<input type="text" name="price">
            <br>Image:<input type="file" name="image">
            <br>Discount:<input type="text" name="price">
            <br><input type="submit" name="update" value="Update">
        </form>
    </body>
</html>
