<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Movie</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('resources/images/bg5.jpg'); /* ✅ Your image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: rgba(224, 255, 255, 0.9); /* light background box */
            padding: 30px;
            border-radius: 10px;
            width: 450px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
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
             border-radius: 4px;
             background-color: rgba(240, 248, 255, 0.8); /* 👈 Light blue with slight transparency */
             color: #333;
   }


        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            width: 100%;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            color: #4CAF50;
            font-weight: bold;
            text-decoration: none;
            text-align: center;
            display: block;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Add New Movie</h2>
        <form action="/add" method="post">
            <label>Title:</label>
            <input type="text" name="title" required />

            <label>Genre:</label>
            <input type="text" name="genre" required />

            <label>Director:</label>
            <input type="text" name="director" required />

            <label>Language:</label>
            <input type="text" name="language" required />

            <label>Year:</label>
            <input type="number" name="year" required />

            <label>Duration (min):</label>
            <input type="number" name="duration" required />

            <label>Rating:</label>
            <input type="number" step="0.1" name="rating" required />

            <input type="submit" value="Add Movie" />
        </form>

        <a href="/">Back to Movie List</a>
    </div>

</body>
</html>
