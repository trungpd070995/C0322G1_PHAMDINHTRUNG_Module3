<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/29/2022
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<h1>Product List</h1>
<form action="/product">
    <input type="text" name="nameSearch">
    <input type="submit" name="action" value="search">
</form>
<a href="/product?action=create" class="btn btn-outline-success">Create new product</a>

<%--<table class="table">--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Tên Sản Phẩm</th>--%>
<%--        <th>Giá sản phẩm</th>--%>
<%--        <th>Mô tả sản phẩm</th>--%>
<%--        <th>Nhà sản xuất</th>--%>
<%--    </tr>--%>

<%--<c:forEach items="${productList}" var="product">--%>
<%--    <tr>--%>
<%--    <td> ${product.id}</td>--%>
<%--    <td> ${product.name} </td>--%>
<%--    <td> ${product.price} </td>--%>
<%--    <td> ${product.describe} </td>--%>
<%--    <td> ${product.producer} </td>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--</c:forEach>--%>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Tên Sản Phẩm</th>
            <th scope="col">Giá sản phẩm</th>
            <th scope="col">Mô tả sản phẩm</th>
            <th scope="col">Nhà sản xuất</th>
            <th scope="col">Xoá</th>
            <th scope="col">Chỉnh sửa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${productList}" var="product">
        <tr>
            <td> ${product.id}</td>
            <td> ${product.name} </td>
            <td> ${product.price} </td>
            <td> ${product.describe} </td>
            <td> ${product.producer} </td>
            <td>
                <a href="/product?action=delete&idDelete=${product.id}" class="btn btn-outline-danger">Xoá</a>
            </td>
            <td>
                <a href="/product?action=edit&idEdit=${product.id}" class="btn btn-outline-warning">Chỉnh sửa</a>
            </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
