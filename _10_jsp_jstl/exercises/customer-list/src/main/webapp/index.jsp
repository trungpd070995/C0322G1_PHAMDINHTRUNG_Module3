<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/28/2022
  Time: 4:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <style>
        div {
            width: 100%;
            text-align: center;
        }
        table {
            border: 1px solid gray;
            width: 600px;
            height: 300px;
        }
        h2 {
            color: crimson;
        }
        th {
            text-align: left;
        }
        img {
            width: 50px;
            height: 50px;
        }
        .content {
            margin: 10px 200px;
        }
    </style>
</head>
<body>
<div>
    <div>
        <h2>Danh sách khách hàng</h2>
    </div>
    <div class="content">
        <table class="table table-striped" style="width: 80%">
            <thead>
            <tr>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Ảnh</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${customer}" >
                <tr>
                    <td>${customer.name}</td>
                    <td>${customer.birthday}</td>
                    <td>${customer.address}</td>
                    <td><img src="${customer.image}"></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
