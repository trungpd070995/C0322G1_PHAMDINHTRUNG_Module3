<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Page</title>
</head>
<body>
<h1>Edit customer</h1>
<c:if test="${message!=null}">
    ${message}
</c:if>
<p>
    <a href="products">Back to Product List</a>
</p>
<form action="products?action=edit&id=${productEdit.getId()}" method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Id:</td>
                <td><input type="text" name="id" value="${productEdit.getId()}"></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="${productEdit.getName()}"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="number" name="price" value="${productEdit.getPrice()}"></td>
            </tr>
            <tr>
                <td>Describe:</td>
                <td><input type="text" name="describe" value="${productEdit.getDescribe()}"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer" value="${productEdit.getProducer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
