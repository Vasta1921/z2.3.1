<%--
  Created by IntelliJ IDEA.
  User: krvro
  Date: 23.05.2020
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>USER LIST</title>
</head>
<body>
<h1>User List</h1><br>


<table border="1">

    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LAST NAME</th>
        <th>EMAIL</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.firstName}"/></td>
            <td><c:out value="${user.lastName}"/></td>
            <td><c:out value="${user.email}"/></td>

            <td><br>
                <form action="user-update" method="get">
                    <input type="hidden" name="id" value="${user.id}">
                    <input type="hidden" name="firstName" value="${user.firstName}">
                    <input type="hidden" name="lastName" value="${user.lastName}">
                    <input type="hidden" name="email" value="${user.email}">

                    <input type="submit" value="update">
                </form>
            </td>
            <td><a href="user-delete/${user.id}"><button>delete</button></a></td>
        </tr>
    </c:forEach>
</table><br>
<a href="user-save"><button>save User</button></a><br>


</body>
</html>
