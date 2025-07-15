<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Movie List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f2ff;
            padding: 40px;
            color: black;
        }

        h2 {
            color: #333;
        }

        a.button {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a.button:hover {
            background-color: #45a049;
        }

        form {
            margin-bottom: 20px;
        }

        input[type="text"] {
            padding: 8px;
            width: 300px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            padding: 8px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            color: black;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ccc;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .actions a {
            margin: 0 5px;
            text-decoration: none;
            font-weight: bold;
        }

        .edit-btn {
            color: blue;
        }

        .delete-btn {
            color: red;
        }
    </style>
</head>
<body>

    <h2>All Movies</h2>

    <a href="/add" class="button">Add New Movie</a>
  <a href="/logout" class="button" style="background-color: #f44336;">Logout</a>
  
    <form action="/" method="get">
    <input type="text" name="search" placeholder="Search by genre..." value="${search}" />
    <input type="submit" value="Search" />
</form>


    <table>
        <tr>
            <th>Title</th>
            <th>Genre</th>
            <th>Director</th>
            <th>Language</th>
            <th>Year</th>
            <th>Duration</th>
            <th>Rating</th>
            <th>Actions</th>
        </tr>

        <c:forEach items="${movies}" var="movie">
            <tr>
                <td>${movie.title}</td>
                <td>${movie.genre}</td>
                <td>${movie.director}</td>
                <td>${movie.language}</td>
                <td>${movie.year}</td>
                <td>${movie.duration} min</td>
                <td>${movie.rating}</td>
                <td class="actions">
                    <a href="/edit/${movie.id}" class="edit-btn">Edit</a> |
                    <a href="/delete/${movie.id}" class="delete-btn">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
