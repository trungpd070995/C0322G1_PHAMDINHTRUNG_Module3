<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<h1>Create Page</h1>
<c:if test="${message!=null}">
    ${message}
</c:if>
<p>
    <a href="products">Back to Product List</a>
</p>
<form action="products?action=create" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id" placeholder="Input ID"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" placeholder="Input Name"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="number" name="price" placeholder="Input Price"></td>
        </tr>
        <tr>
            <td>Describe</td>
            <td><input type="text" name="describe" placeholder="Input Describe"></td>
        </tr>
        <tr>
            <td>Producer</td>
            <td><input type="text" name="producer" placeholder="Input Producer"></td>
        </tr>
        <tr>
            <td>
                <button type="submit">Save</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
