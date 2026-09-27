<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>StudyFlow - Student Project Management</title>

    <link rel="stylesheet" href="style.css">

</head>

<body>

    <!-- NAVIGATION -->

    <nav class="navbar">

        <div class="logo">
            🎓 <span>Study</span><strong>Flow</strong>
        </div>

        <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="#about">About</a>
            <a href="#features">Features</a>
            <a href="#contact">Contact</a>
        </div>

        <div class="nav-buttons">

            <a href="login.jsp" class="btn btn-outline">
                Login
            </a>

            <a href="register.jsp" class="btn btn-primary">
                Create Account
            </a>

        </div>

    </nav>


    <!-- HERO SECTION -->

    <section class="hero">

        <div class="hero-content">

            <p class="hero-small-title">
                YOUR STUDY. YOUR TEAM. YOUR SUCCESS.
            </p>

            <h1>
                Organize.<br>
                Collaborate.<br>
                <span>Succeed.</span>
            </h1>

            <p class="hero-description">
                StudyFlow helps you manage your student projects,
                organize tasks, and work together more efficiently
                – all in one place.
            </p>

            <div class="hero-buttons">

                <a href="register.jsp" class="btn btn-primary btn-large">
                    Get Started →
                </a>

                <a href="login.jsp" class="btn btn-outline btn-large">
                    Login
                </a>

            </div>

        </div>


        <div class="hero-image">

            <img src="images/hero-students.png"
                 alt="Students working together">

        </div>

    </section>


    <!-- FEATURES -->

    <section class="features" id="features">

        <div class="feature">

            <div class="feature-icon">
                👥
            </div>

            <h3>Work Together</h3>

            <p>
                Collaborate with your team
                and keep everyone in sync.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">
                ✓
            </div>

            <h3>Stay Organized</h3>

            <p>
                Manage projects and tasks
                easily and efficiently.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">
                📊
            </div>

            <h3>Track Progress</h3>

            <p>
                See what's done, what's next,
                and reach your goals.
            </p>

        </div>


        <div class="feature">

            <div class="feature-icon">
                💡
            </div>

            <h3>Achieve More</h3>

            <p>
                Turn your ideas into results
                – together.
            </p>

        </div>

    </section>


    <!-- ABOUT -->

    <section class="about" id="about">

        <h2>
            A better way to manage
            student projects.
        </h2>

        <p>
            StudyFlow brings projects, tasks and teamwork
            together in one simple platform designed
            especially for students.
        </p>

    </section>


    <!-- FOOTER -->

    <footer id="contact">

        <div class="footer-logo">
            🎓 Study<span>Flow</span>
        </div>

        <p>
            A better way to manage your student projects.
        </p>

        <div class="footer-links">

            <a href="index.jsp">Home</a>
            <a href="#about">About</a>
            <a href="#features">Features</a>

        </div>

        <p class="copyright">
            © 2026 StudyFlow. All rights reserved.
        </p>

    </footer>


</body>
</html>