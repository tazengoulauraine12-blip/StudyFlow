<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Task - StudyFlow</title>


    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }


        body {
            font-family: Arial, Helvetica, sans-serif;

            min-height: 100vh;

            background:
                linear-gradient(
                    rgba(0, 0, 0, 0.45),
                    rgba(0, 0, 0, 0.45)
                ),
                url("images/study-background.jpg");

            background-size: cover;
            background-position: center;
            background-attachment: fixed;

            color: #222;
        }


        /* ========================= */
        /* NAVBAR */
        /* ========================= */

        .home-navbar {
            width: 100%;

            display: flex;
            justify-content: space-between;
            align-items: center;

            padding: 20px 50px;

            background: rgba(255, 255, 255, 0.96);

            box-shadow: 0 2px 12px rgba(0, 0, 0, 0.08);
        }


        .nav-logo a {
            text-decoration: none;

            font-size: 26px;
            font-weight: 700;

            color: #111827;
        }


        .nav-links {
            display: flex;
            align-items: center;
            gap: 28px;
        }


        .nav-links a {
            text-decoration: none;

            color: #333;

            font-size: 15px;
            font-weight: 500;

            transition: 0.2s;
        }


        .nav-links a:hover {
            color: #111827;
        }


        .nav-links a.active {
            font-weight: 700;
            color: #111827;
        }


        /* ========================= */
        /* PAGE */
        /* ========================= */

        .task-page {
            min-height: calc(100vh - 80px);

            display: flex;

            justify-content: center;
            align-items: center;

            padding: 50px 20px;
        }


        /* ========================= */
        /* FORM CARD */
        /* ========================= */

        .task-form-card {

            width: 100%;

            max-width: 700px;

            background: rgba(255, 255, 255, 0.97);

            padding: 40px;

            border-radius: 20px;

            box-shadow:
                0 20px 50px rgba(0, 0, 0, 0.20);
        }


        /* ========================= */
        /* HEADER */
        /* ========================= */

        .task-header {
            margin-bottom: 30px;
        }


        .task-header h1 {
            font-size: 32px;

            color: #111827;

            margin-bottom: 10px;
        }


        .task-header p {
            color: #6b7280;

            font-size: 15px;

            line-height: 1.6;
        }


        /* ========================= */
        /* FORM */
        /* ========================= */

        .form-group {
            margin-bottom: 22px;
        }


        .form-group label {
            display: block;

            margin-bottom: 8px;

            font-size: 14px;

            font-weight: 600;

            color: #374151;
        }


        .form-group input,
        .form-group textarea,
        .form-group select {

            width: 100%;

            padding: 13px 15px;

            border: 1px solid #d1d5db;

            border-radius: 10px;

            background: #ffffff;

            font-family: Arial, Helvetica, sans-serif;

            font-size: 15px;

            color: #111827;

            transition: 0.2s;
        }


        .form-group input {
            height: 48px;
        }


        .form-group select {
            height: 48px;

            cursor: pointer;
        }


        .form-group textarea {

            min-height: 120px;

            resize: vertical;
        }


        .form-group input:focus,
        .form-group textarea:focus,
        .form-group select:focus {

            outline: none;

            border-color: #111827;

            box-shadow:
                0 0 0 3px rgba(17, 24, 39, 0.08);
        }


        /* ========================= */
        /* TWO COLUMNS */
        /* ========================= */

        .form-row {

            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 20px;
        }


        /* ========================= */
        /* BUTTONS */
        /* ========================= */

        .form-actions {

            display: flex;

            justify-content: flex-end;

            align-items: center;

            gap: 15px;

            margin-top: 30px;
        }


        .btn {

            display: inline-flex;

            justify-content: center;

            align-items: center;

            min-height: 45px;

            padding: 0 22px;

            border-radius: 10px;

            text-decoration: none;

            font-size: 14px;

            font-weight: 600;

            border: none;

            cursor: pointer;

            transition: 0.2s;
        }


        .btn-cancel {

            background: #f3f4f6;

            color: #374151;
        }


        .btn-cancel:hover {

            background: #e5e7eb;
        }


        .btn-create {

            background: #111827;

            color: white;
        }


        .btn-create:hover {

            background: #000000;

            transform: translateY(-1px);
        }


        /* ========================= */
        /* RESPONSIVE */
        /* ========================= */

        @media (max-width: 700px) {

            .home-navbar {

                padding: 18px 20px;

                flex-direction: column;

                gap: 15px;
            }


            .nav-links {

                gap: 15px;

                flex-wrap: wrap;

                justify-content: center;
            }


            .task-page {

                padding: 30px 15px;
            }


            .task-form-card {

                padding: 28px 22px;
            }


            .task-header h1 {

                font-size: 27px;
            }


            .form-row {

                grid-template-columns: 1fr;

                gap: 0;
            }


            .form-actions {

                flex-direction: column-reverse;

                align-items: stretch;
            }


            .btn {

                width: 100%;
            }
        }

    </style>

</head>


<body>


    <!-- ========================= -->
    <!-- NAVBAR -->
    <!-- ========================= -->

    <nav class="home-navbar">

        <div class="nav-logo">

            <a href="dashboard.jsp">
                StudyFlow
            </a>

        </div>


        <div class="nav-links">

            <a href="dashboard.jsp">
                Dashboard
            </a>

            <a href="createProject.jsp">
                Projects
            </a>

            <a href="createTask.jsp" class="active">
                Tasks
            </a>

            <a href="index.jsp">
                Logout
            </a>

        </div>

    </nav>



    <!-- ========================= -->
    <!-- TASK PAGE -->
    <!-- ========================= -->

    <main class="task-page">


        <div class="task-form-card">


            <div class="task-header">

                <h1>
                    Create a Task
                </h1>

                <p>
                    Create a task, assign it to a project and keep your work organized.
                </p>

            </div>



            <!-- ========================= -->
            <!-- TASK FORM -->
            <!-- ========================= -->

            <form action="createTask" method="post">


                <!-- TASK TITLE -->

                <div class="form-group">

                    <label for="title">
                        Task Title
                    </label>

                    <input
                        type="text"
                        id="title"
                        name="title"
                        placeholder="Enter task title"
                        required>

                </div>



                <!-- DESCRIPTION -->

                <div class="form-group">

                    <label for="description">
                        Description
                    </label>

                    <textarea
                        id="description"
                        name="description"
                        placeholder="Describe what needs to be done..."
                        required></textarea>

                </div>



                <!-- PROJECT + ASSIGNED TO -->

                <div class="form-row">


                    <div class="form-group">

                        <label for="projectId">
                            Project
                        </label>

                        <select
                            id="projectId"
                            name="projectId"
                            required>

                            <option value="">
                                Select a project
                            </option>

                            <option value="1">
                                StudyFlow
                            </option>

                            <option value="2">
                                University Project
                            </option>

                        </select>

                    </div>



                    <div class="form-group">

                        <label for="assignedTo">
                            Assigned To
                        </label>

                        <input
                            type="text"
                            id="assignedTo"
                            name="assignedTo"
                            placeholder="Enter member name">

                    </div>


                </div>



                <!-- DUE DATE + STATUS -->

                <div class="form-row">


                    <div class="form-group">

                        <label for="dueDate">
                            Due Date
                        </label>

                        <input
                            type="date"
                            id="dueDate"
                            name="dueDate"
                            required>

                    </div>



                    <div class="form-group">

                        <label for="status">
                            Status
                        </label>

                        <select
                            id="status"
                            name="status"
                            required>

                            <option value="TODO">
                                To Do
                            </option>

                            <option value="IN_PROGRESS">
                                In Progress
                            </option>

                            <option value="DONE">
                                Done
                            </option>

                        </select>

                    </div>


                </div>



                <!-- BUTTONS -->

                <div class="form-actions">


                    <a
                        href="dashboard.jsp"
                        class="btn btn-cancel">

                        Cancel

                    </a>



                    <button
                        type="submit"
                        class="btn btn-create">

                        Create Task

                    </button>


                </div>


            </form>


        </div>


    </main>


</body>

</html>