<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('resources/images/bg4.jpg'); /* 👈 Make sure this path is correct */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            padding: 40px;
            margin: 0;
            min-height: 100vh;
        }

        form {
            background-color: rgba(173, 216, 230, 0.95); /* Light blue with opacity */
            padding: 30px;
            border-radius: 10px;
            width: 450px; /* Increased width */
            margin-left: auto;
            margin-right: 50px; /* Push it a bit to the left from the right edge */
            margin-top: 150px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            font-weight: bold;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <form action="/login" method="post">
        <h2>Login</h2>
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        <label>Username:</label>
        <input type="text" name="username" required />

        <label>Password:</label>
        <input type="password" name="password" required />

        <input type="submit" value="Login" />
    </form>

</body>
</html>
