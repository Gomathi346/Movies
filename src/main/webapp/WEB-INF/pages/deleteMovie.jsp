<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Movie</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff3f3;
            padding: 40px;
        }

        .confirm-box {
            background-color: white;
            padding: 20px;
            border: 2px solid red;
            border-radius: 10px;
            max-width: 400px;
            margin: auto;
            text-align: center;
        }

        h2 {
            color: red;
        }

        p {
            margin: 15px 0;
        }

        form {
            display: flex;
            justify-content: space-around;
        }

        button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        .delete-btn {
            background-color: red;
            color: white;
        }

        .cancel-btn {
            background-color: #ccc;
            color: black;
        }
    </style>
</head>
<body>

<div class="confirm-box">
    <h2>Confirm Delete</h2>
    <p>Are you sure you want to delete <strong>${movie.title}</strong>?</p>

    <form action="/delete/${movie.id}" method="post">
        <button type="submit" class="delete-btn">Yes, Delete</button>
        <a href="/" class="cancel-btn" style="text-decoration: none; padding: 10px 20px;">Cancel</a>
    </form>
</div>

</body>
</html>
