<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Task - StudyFlow</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>StudyFlow</h1>

    <h2>Create New Task</h2>

    <form action="createTask" method="post">

        <label>Project ID:</label><br>
        <input type="number" name="projectId" required>

        <br><br>

        <label>Task Title:</label><br>
        <input type="text" name="title" required>

        <br><br>

        <label>Description:</label><br>
        <textarea name="description" rows="5" cols="40"></textarea>

        <br><br>

        <label>Due Date:</label><br>
        <input type="date" name="dueDate">

        <br><br>

        <label>Status:</label><br>
        <select name="status">
            <option value="TODO">TODO</option>
            <option value="IN_PROGRESS">IN PROGRESS</option>
            <option value="DONE">DONE</option>
        </select>

        <br><br>

        <button type="submit">Create Task</button>

    </form>

    <br>

    <a href="dashboard">Back to Dashboard</a>

</body>
</html>