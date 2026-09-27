<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Create Account - StudyFlow</title>

    <link rel="stylesheet" href="style.css">

</head>

<body class="auth-page">

    <div class="auth-container">


        <!-- LEFT SIDE - PHOTO -->

        <div class="auth-image">

            <img src="<%= request.getContextPath() %>/images/hero-students.png"
                 alt="Students working together">

            <div class="auth-overlay">

                <h1>Join StudyFlow</h1>

                <p>
                    Build your team.<br>
                    Organize your work.<br>
                    Achieve more together.
                </p>

            </div>

        </div>


        <!-- RIGHT SIDE - REGISTER -->

        <div class="auth-form">

            <div class="auth-form-content">

                <div class="auth-logo">
                    🎓 Study<span>Flow</span>
                </div>

                <h2>Create Account</h2>

                <p class="auth-subtitle">
                    Create your account and start managing
                    your student projects.
                </p>


                <form action="register" method="post">


                    <label>First Name</label>

                    <input
                        type="text"
                        name="firstName"
                        placeholder="Enter your first name"
                        required>


                    <label>Last Name</label>

                    <input
                        type="text"
                        name="lastName"
                        placeholder="Enter your last name"
                        required>


                    <label>Email</label>

                    <input
                        type="email"
                        name="email"
                        placeholder="Enter your email"
                        required>


                    <label>Password</label>

                    <input
                        type="password"
                        name="password"
                        placeholder="Create a password"
                        required>


                    <button type="submit" class="auth-submit">
                        Create Account →
                    </button>

                </form>


                <p class="auth-register">

                    Already have an account?

                    <a href="login.jsp">
                        Login
                    </a>

                </p>


                <a href="index.jsp" class="back-home">
                    ← Back to Home
                </a>

            </div>

        </div>

    </div>

</body>

</html>