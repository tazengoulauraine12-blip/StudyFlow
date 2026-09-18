package com.studyflow.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.studyflow.dao.ProjectDAO;
import com.studyflow.dao.TaskDAO;
import com.studyflow.model.Project;
import com.studyflow.model.Task;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        Integer userId = (Integer) session.getAttribute("userId");

        if (userId == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Récupérer les projets
        ProjectDAO projectDAO = new ProjectDAO();

        List<Project> projects =
                projectDAO.getProjectsByUser(userId);

        // Récupérer les tâches
        TaskDAO taskDAO = new TaskDAO();

        List<Task> tasks =
                taskDAO.getTasksByUser(userId);

        // Envoyer les données au JSP
        request.setAttribute("projects", projects);
        request.setAttribute("tasks", tasks);

        request.getRequestDispatcher("dashboard.jsp")
               .forward(request, response);
    }
}