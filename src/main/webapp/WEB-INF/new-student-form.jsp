<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Student</title>
    <!-- Link to external CSS file -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<header>
    <img class="logo" src="${pageContext.request.contextPath}/images/logo.jpg" alt="Logo" />
    <h1>Student Management</h1>
    <nav>
        <a href="${pageContext.request.contextPath}/students">Students</a>
        <a href="${pageContext.request.contextPath}/h2-console" target="_blank">H2 Console</a>
    </nav>
</header>

<div class="form-container">
    <h2>Add Student</h2>
    <form action="${pageContext.request.contextPath}/students/" method="post">
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" required />
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" required />
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required />
        </div>
        <button type="submit">Add Student</button>
    </form>
</div>
</body>
</html>
