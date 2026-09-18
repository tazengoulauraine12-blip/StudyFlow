<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - StudyFlow</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>StudyFlow</h1>

    <h2>Login</h2>

    <form action="login" method="post">

        <label>Email:</label><br>
        <input type="email" name="email" required>

        <br><br>

        <label>Password:</label><br>
        <input type="password" name="password" required>

        <br><br>

        <button type="submit">Login</button>

    </form>

    <br>

    <a href="register.jsp">Create Account</a>

    <br><br>

    <a href="index.jsp">Back to Home</a>

</body>
</html>