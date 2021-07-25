<%--
  Created by IntelliJ IDEA.
  User: krvro
  Date: 23.05.2020
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Update User</title>
</head>
<body>


<form action="user-update" method="post">
    <input type="hidden" name="id"  value="${param.id}" >
    <input type="text" name="firstName"  value="${param.firstName}" required>
    <input type="text" name="lastName"  value="${param.lastName}" required>
    <input type="text" name="email"  value="${param.email}" required><br>

    <input type="submit" value="Update">
</form><br>
</body>
</html>
