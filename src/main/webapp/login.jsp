<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Login - StudyFlow</title>

    <link rel="stylesheet" href="style.css">

</head>

<body class="auth-page">

    <div class="auth-container">


        <!-- LEFT SIDE - PHOTO -->

        <div class="auth-image">

            <img src="<%= request.getContextPath() %>/images/hero-students.png"
                 alt="Students working together">

            <div class="auth-overlay">

                <h1>StudyFlow</h1>

                <p>
                    Organize your projects.<br>
                    Work together.<br>
                    Achieve your goals.
                </p>

            </div>

        </div>


        <!-- RIGHT SIDE - LOGIN -->

        <div class="auth-form">

            <div class="auth-form-content">

                <div class="auth-logo">
                    🎓 Study<span>Flow</span>
                </div>

                <h2>Welcome Back!</h2>

                <p class="auth-subtitle">
                    Login to continue managing your projects.
                </p>


                <form action="login" method="post">

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
                        placeholder="Enter your password"
                        required>


                    <button type="submit" class="auth-submit">
                        Login →
                    </button>

                </form>


                <p class="auth-register">

                    Don't have an account?

                    <a href="register.jsp">
                        Create Account
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