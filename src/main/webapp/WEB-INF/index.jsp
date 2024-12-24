<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Student Management System</title>
    <!-- Inline CSS -->
    <style>
        /* Reset styles */
        body, h1, h2, p, a {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* General body styling */
        body {
            background-color: #f4f7f9;
            margin: 0;
            padding: 0;
        }

        /* Header styling */
        header {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* Logo styling */
        .logo {
            height: 50px;
            width: auto;
            margin-right: 20px;
        }

        /* Header title */
        header h1 {
            flex-grow: 1;
            font-size: 24px;
            text-align: center;
            margin: 0;
        }

        /* Navigation styling */
        header nav {
            display: flex;
            gap: 15px;
        }

        header nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        header nav a:hover {
            text-decoration: underline;
        }

        /* Container styling */
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .container h2 {
            color: #007bff;
            margin-bottom: 20px;
        }

        .container p {
            font-size: 18px;
            color: #555;
            margin-bottom: 30px;
        }

        /* Button styling */
        .button-link {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            color: white;
            background-color: #007bff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button-link:hover {
            background-color: #0056b3;
        }
    </style>
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

<div class="container">
    <h2>Welcome to the Student Management System</h2>
    <p>Effortlessly manage student records with our user-friendly system.</p>
    <a class="button-link" href="${pageContext.request.contextPath}/students">View Students</a>
</div>
</body>
</html>
