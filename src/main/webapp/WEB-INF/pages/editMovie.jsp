<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Movie</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 40px;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            width: 400px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #0069d9;
        }
    </style>
</head>
<body>

<h2>Edit Movie</h2>
<form action="/edit/${movie.id}" method="post">
    <label>Title:</label>
    <input type="text" name="title" value="${movie.title}" required />

    <label>Genre:</label>
    <input type="text" name="genre" value="${movie.genre}" required />

    <label>Director:</label>
    <input type="text" name="director" value="${movie.director}" required />

    <label>Language:</label>
    <input type="text" name="language" value="${movie.language}" required />

    <label>Year:</label>
    <input type="number" name="year" value="${movie.year}" required />

    <label>Duration (min):</label>
    <input type="number" name="duration" value="${movie.duration}" required />

    <label>Rating:</label>
    <input type="number" step="0.1" name="rating" value="${movie.rating}" required />

    <input type="submit" value="Update Movie" />
</form>

</body>
</html>
