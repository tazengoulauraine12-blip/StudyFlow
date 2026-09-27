<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.studyflow.model.Project" %>
<%@ page import="com.studyflow.model.Task" %>

<%
    List<Project> projects =
        (List<Project>) request.getAttribute("projects");

    List<Task> tasks =
        (List<Task>) request.getAttribute("tasks");

    int projectCount = projects != null ? projects.size() : 0;
    int taskCount = tasks != null ? tasks.size() : 0;

    int completedTasks = 0;

    if (tasks != null) {
        for (Task task : tasks) {
            if ("DONE".equals(task.getStatus())) {
                completedTasks++;
            }
        }
    }

    int progress = taskCount > 0
            ? (completedTasks * 100 / taskCount)
            : 0;
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Dashboard - StudyFlow</title>

    <link rel="stylesheet" href="style.css">

</head>

<body class="dashboard-page">


    <!-- NAVBAR -->

    <nav class="dashboard-navbar">

        <div class="logo">
            🎓 Study<strong>Flow</strong>
        </div>

        <div class="dashboard-nav-right">

            <span>
                Welcome, <strong><%= session.getAttribute("firstName") %></strong> 👋
            </span>

            <a href="logout" class="logout-button">
                Logout
            </a>

        </div>

    </nav>


    <!-- MAIN -->

    <main class="dashboard-container">


        <!-- WELCOME -->

        <section class="dashboard-welcome">

            <div>

                <p class="dashboard-small-title">
                    STUDENT PROJECT MANAGEMENT
                </p>

                <h1>
                    Welcome back,
                    <%= session.getAttribute("firstName") %>! 👋
                </h1>

                <p>
                    Let's keep your projects moving forward.
                </p>

            </div>

        </section>


        <!-- STATISTICS -->

        <section class="stats-grid">


            <div class="stat-card">

                <div class="stat-icon">
                    📁
                </div>

                <div>
                    <span class="stat-number">
                        <%= projectCount %>
                    </span>

                    <p>My Projects</p>
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-icon">
                    ✅
                </div>

                <div>
                    <span class="stat-number">
                        <%= taskCount %>
                    </span>

                    <p>Total Tasks</p>
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-icon">
                    🎯
                </div>

                <div>
                    <span class="stat-number">
                        <%= completedTasks %>
                    </span>

                    <p>Completed</p>
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-icon">
                    📊
                </div>

                <div>
                    <span class="stat-number">
                        <%= progress %>%
                    </span>

                    <p>Progress</p>
                </div>

            </div>

        </section>


        <!-- ACTIONS -->

        <section class="dashboard-actions">

            <a href="createProject.jsp"
               class="dashboard-action primary-action">

                <span>＋</span>
                Create Project

            </a>


            <a href="createTask.jsp"
               class="dashboard-action">

                <span>＋</span>
                Create Task

            </a>

        </section>


        <!-- PROJECTS -->

        <section class="dashboard-section">

            <div class="section-header">

                <div>

                    <h2>📁 My Projects</h2>

                    <p>
                        Your current student projects
                    </p>

                </div>

            </div>


            <%
                if (projects != null && !projects.isEmpty()) {
            %>

                <div class="project-grid">

                    <% for (Project project : projects) { %>

                        <div class="project-card">

                            <div class="project-card-top">

                                <span class="project-badge">
                                    PROJECT
                                </span>

                            </div>

                            <h3>
                                <%= project.getName() %>
                            </h3>

                            <p>
                                <%= project.getDescription() != null
                                    ? project.getDescription()
                                    : "No description available." %>
                            </p>

                            <div class="project-dates">

                                <span>
                                    📅 <%= project.getStartDate() %>
                                </span>

                                <span>
                                    → <%= project.getEndDate() %>
                                </span>

                            </div>

                        </div>

                    <% } %>

                </div>

            <%
                } else {
            %>

                <div class="empty-card">

                    <div class="empty-icon">
                        📁
                    </div>

                    <h3>No projects yet</h3>

                    <p>
                        Create your first project and start working.
                    </p>

                    <a href="createProject.jsp"
                       class="btn btn-primary">
                        Create Project
                    </a>

                </div>

            <%
                }
            %>

        </section>


        <!-- TASKS -->

        <section class="dashboard-section">

            <div class="section-header">

                <div>

                    <h2>✅ My Tasks</h2>

                    <p>
                        Keep track of your work
                    </p>

                </div>

            </div>


            <%
                if (tasks != null && !tasks.isEmpty()) {
            %>

                <div class="task-list">

                    <% for (Task task : tasks) { %>

                        <div class="task-card">

                            <div class="task-info">

                                <h3>
                                    <%= task.getTitle() %>
                                </h3>

                                <p>
                                    <%= task.getDescription() != null
                                        ? task.getDescription()
                                        : "No description." %>
                                </p>

                                <span class="task-due">
                                    📅 Due:
                                    <%= task.getDueDate() != null
                                        ? task.getDueDate()
                                        : "No deadline" %>
                                </span>

                            </div>


                            <div class="task-status-area">

                                <span class="status-badge
                                    <%= task.getStatus() %>">

                                    <%= task.getStatus() %>

                                </span>


                                <form action="updateTask"
                                      method="post">

                                    <input
                                        type="hidden"
                                        name="taskId"
                                        value="<%= task.getTaskId() %>">


                                    <select name="status">

                                        <option value="TODO"
                                            <%= "TODO".equals(task.getStatus())
                                                ? "selected" : "" %>>
                                            TODO
                                        </option>

                                        <option value="IN_PROGRESS"
                                            <%= "IN_PROGRESS".equals(task.getStatus())
                                                ? "selected" : "" %>>
                                            IN PROGRESS
                                        </option>

                                        <option value="DONE"
                                            <%= "DONE".equals(task.getStatus())
                                                ? "selected" : "" %>>
                                            DONE
                                        </option>

                                    </select>


                                    <button type="submit">
                                        Update
                                    </button>

                                </form>

                            </div>

                        </div>

                    <% } %>

                </div>

            <%
                } else {
            %>

                <div class="empty-card">

                    <div class="empty-icon">
                        ✅
                    </div>

                    <h3>No tasks yet</h3>

                    <p>
                        Create a task to organize your project work.
                    </p>

                    <a href="createTask.jsp"
                       class="btn btn-primary">
                        Create Task
                    </a>

                </div>

            <%
                }
            %>

        </section>


        <!-- PROGRESS -->

        <section class="progress-card">

            <div>

                <h2>🎯 Your Progress</h2>

                <p>
                    Keep going! You have completed
                    <strong><%= completedTasks %></strong>
                    of
                    <strong><%= taskCount %></strong>
                    tasks.
                </p>

            </div>


            <div class="progress-bar-container">

                <div class="progress-bar"
                     style="width: <%= progress %>%;">
                </div>

            </div>

            <strong class="progress-percent">
                <%= progress %>%
            </strong>

        </section>


    </main>


    <!-- FOOTER -->

    <footer class="dashboard-footer">

        <strong>🎓 StudyFlow</strong>

        <span>
            A better way to manage your student projects.
        </span>

    </footer>


</body>

</html>