<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Project - StudyFlow</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>StudyFlow</h1>

    <h2>Create New Project</h2>

    <form action="createProject" method="post">

        <label>Project Name:</label><br>
        <input type="text" name="name" required>

        <br><br>

        <label>Description:</label><br>
        <textarea name="description" rows="5" cols="40"></textarea>

        <br><br>

        <label>Start Date:</label><br>
        <input type="date" name="startDate">

        <br><br>

        <label>End Date:</label><br>
        <input type="date" name="endDate">

        <br><br>

        <button type="submit">Create Project</button>

    </form>

    <br>

    <a href="dashboard.jsp">Back to Dashboard</a>

</body>
</html>