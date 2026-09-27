<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Project - StudyFlow</title>


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

        .project-page {
            min-height: calc(100vh - 80px);

            display: flex;

            justify-content: center;
            align-items: center;

            padding: 50px 20px;
        }


        /* ========================= */
        /* FORM CARD */
        /* ========================= */

        .project-form-card {

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

        .project-header {
            margin-bottom: 30px;
        }


        .project-header h1 {
            font-size: 32px;

            color: #111827;

            margin-bottom: 10px;
        }


        .project-header p {
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
        .form-group textarea {

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


        .form-group textarea {

            min-height: 130px;

            resize: vertical;
        }


        .form-group input:focus,
        .form-group textarea:focus {

            outline: none;

            border-color: #111827;

            box-shadow:
                0 0 0 3px rgba(17, 24, 39, 0.08);
        }


        /* ========================= */
        /* DATES */
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


            .project-page {

                padding: 30px 15px;
            }


            .project-form-card {

                padding: 28px 22px;
            }


            .project-header h1 {

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

            <a href="createProject.jsp" class="active">
                Projects
            </a>

            <a href="createTask.jsp">
                Tasks
            </a>

            <a href="index.jsp">
                Logout
            </a>

        </div>

    </nav>



    <!-- ========================= -->
    <!-- PROJECT PAGE -->
    <!-- ========================= -->

    <main class="project-page">


        <div class="project-form-card">


            <div class="project-header">

                <h1>
                    Create a Project
                </h1>

                <p>
                    Create a new project and organize your work with StudyFlow.
                </p>

            </div>



            <!-- ========================= -->
            <!-- PROJECT FORM -->
            <!-- ========================= -->

            <form action="createProject" method="post">


                <!-- PROJECT NAME -->

                <div class="form-group">

                    <label for="name">
                        Project Name
                    </label>

                    <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter project name"
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
                        placeholder="Describe your project..."
                        required></textarea>

                </div>



                <!-- DATES -->

                <div class="form-row">


                    <div class="form-group">

                        <label for="startDate">
                            Start Date
                        </label>

                        <input
                            type="date"
                            id="startDate"
                            name="startDate"
                            required>

                    </div>



                    <div class="form-group">

                        <label for="endDate">
                            End Date
                        </label>

                        <input
                            type="date"
                            id="endDate"
                            name="endDate"
                            required>

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

                        Create Project

                    </button>


                </div>


            </form>


        </div>


    </main>


</body>

</html>