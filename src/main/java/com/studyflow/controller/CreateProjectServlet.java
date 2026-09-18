package com.studyflow.controller;

import java.io.IOException;
import java.sql.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.studyflow.dao.ProjectDAO;
import com.studyflow.model.Project;

@WebServlet("/createProject")
public class CreateProjectServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String description = request.getParameter("description");

        String startDateString = request.getParameter("startDate");
        String endDateString = request.getParameter("endDate");

        Date startDate = null;
        Date endDate = null;

        if (startDateString != null && !startDateString.isEmpty()) {
            startDate = Date.valueOf(startDateString);
        }

        if (endDateString != null && !endDateString.isEmpty()) {
            endDate = Date.valueOf(endDateString);
        }

        HttpSession session = request.getSession();

        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Project project = new Project(
                name,
                description,
                startDate,
                endDate,
                userId
        );

        ProjectDAO projectDAO = new ProjectDAO();

        boolean success = projectDAO.createProject(project);

        if (success) {

            response.sendRedirect("dashboard.jsp");

        } else {

            response.setContentType("text/html;charset=UTF-8");

            response.getWriter().println(
                "<h2>Project creation failed</h2>"
                + "<p>Please check the Eclipse Console.</p>"
                + "<a href='createProject.jsp'>Try again</a>"
            );
        }
    }
}