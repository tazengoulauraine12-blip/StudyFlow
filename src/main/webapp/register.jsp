<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Account - StudyFlow</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>StudyFlow</h1>

    <h2>Create Account</h2>

    <form action="register" method="post">

        <label>First Name:</label><br>
        <input type="text" name="firstName" required>
        <br><br>

        <label>Last Name:</label><br>
        <input type="text" name="lastName" required>
        <br><br>

        <label>Email:</label><br>
        <input type="email" name="email" required>
        <br><br>

        <label>Password:</label><br>
        <input type="password" name="password" required>
        <br><br>

        <button type="submit">Create Account</button>

    </form>

    <br>

    <a href="index.jsp">Back to Home</a>

</body>
</html>