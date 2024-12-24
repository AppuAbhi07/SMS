<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Students</title>
    <!-- Inline CSS to keep the logo small -->
    <style>
        .logo {
            height: 40px; /* Adjust the height to make the logo small */
            width: auto; /* Maintain the aspect ratio */
        }
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
        }
        header h1 {
            font-size: 24px;
            margin: 0;
            flex-grow: 1;
            text-align: center;
        }
        header nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin-left: 15px;
        }
        header nav a:hover {
            text-decoration: underline;
        }
        .container {
            padding: 20px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        table th {
            background-color: #007bff;
            color: white;
        }
        .button-link {
            text-decoration: none;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<header>
    <!-- Inline styling for small logo -->
    <img class="logo" src="${pageContext.request.contextPath}/images/logo.jpg" alt="Logo" />
    <h1>Student Management</h1>
    <nav>
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/students/new">Add Student</a>
    </nav>
</header>

<div class="container">
    <h2>List of Students</h2>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th style="width: 150px;">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.firstName}</td>
                <td>${student.lastName}</td>
                <td>${student.email}</td>
                <td>
                    <a class="button-link" style="background-color:#f39c12" 
                       href="${pageContext.request.contextPath}/students/edit/${student.id}">Edit</a>
                    <a class="button-link" style="background-color:#c0392b" 
                       href="${pageContext.request.contextPath}/students/delete/${student.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
