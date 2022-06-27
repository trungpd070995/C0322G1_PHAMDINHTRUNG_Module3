<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/27/2022
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
  <title>Simple Dictionary</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<form method="post" action="/translate">
  <input type="text" name="txtSearch" value="${searchValue}" placeholder="Enter your word: "/>
  <input type = "submit" id = "submit" value = "Search"/>
</form>
<h3>Result: ${result}</h3>
</body>
</html>
