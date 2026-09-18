<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.studyflow.model.Project" %>
<%@ page import="com.studyflow.model.Task" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard - StudyFlow</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <h1>StudyFlow</h1>

    <h2>
        Welcome, <%= session.getAttribute("firstName") %>!
    </h2>

    <hr>

    <!-- PROJECTS -->

    <h2>My Projects</h2>

    <%
        List<Project> projects =
            (List<Project>) request.getAttribute("projects");

        if (projects != null && !projects.isEmpty()) {
    %>

        <% for (Project project : projects) { %>

            <h3><%= project.getName() %></h3>

            <p>
                <%= project.getDescription() %>
            </p>

            <p>
                Start: <%= project.getStartDate() %>
                |
                End: <%= project.getEndDate() %>
            </p>

            <hr>

        <% } %>

    <%
        } else {
    %>

        <p>No projects yet.</p>

    <%
        }
    %>

    <a href="createProject.jsp">
        <button type="button">Create Project</button>
    </a>

    <hr>

    <!-- TASKS -->

    <h2>My Tasks</h2>

    <%
        List<Task> tasks =
            (List<Task>) request.getAttribute("tasks");

        if (tasks != null && !tasks.isEmpty()) {
    %>

        <% for (Task task : tasks) { %>

            <h3><%= task.getTitle() %></h3>

            <p>
                <%= task.getDescription() %>
            </p>

            <p>
                <strong>Status:</strong>
                <%= task.getStatus() %>
            </p>

            <p>
                <strong>Due:</strong>
                <%= task.getDueDate() %>
            </p>

            <hr>

        <% } %>

    <%
        } else {
    %>

        <p>No tasks yet.</p>

    <%
        }
    %>

    <a href="createTask.jsp">
        <button type="button">Create Task</button>
    </a>

    <hr>

    <a href="logout">Logout</a>

</body>
</html>