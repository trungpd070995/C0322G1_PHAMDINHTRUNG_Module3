<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/27/2022
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ứng dụng Product Discount Calculator</title>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/discount" method="get">
  <label>Product Description</label><br>
  <input type="text" name="txtDescribeProduct" placeholder="Enter your describe: "/><br>
  <label>List Price</label><br>
  <input type="number" name="numberListPrice" placeholder="Enter listed price of the product: "/><br>
  <label>Discount Percent</label><br>
  <input type="number" name="numberDiscountRate" placeholder="Enter discount rate: "/>
  <input type="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>
