<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Student</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>
<header>
    <img class="logo" src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="Logo" />
    <h1>Student Management</h1>
    <nav>
        <a href="${pageContext.request.contextPath}/students">All Students</a>
    </nav>
</header>

<div class="container">
    <h2>Edit Student</h2>
    <form action="${pageContext.request.contextPath}/students/update/${student.id}" method="post">
        <label>First Name:</label><br/>
        <input type="text" name="firstName" value="${student.firstName}" required/><br/><br/>

        <label>Last Name:</label><br/>
        <input type="text" name="lastName" value="${student.lastName}" required/><br/><br/>

        <label>Email:</label><br/>
        <input type="email" name="email" value="${student.email}" required/><br/><br/>

        <input type="submit" value="Update"/>
    </form>
</div>
</body>
</html>
