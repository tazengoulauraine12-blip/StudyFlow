package com.studyflow.controller;

import java.io.IOException;
import java.sql.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.studyflow.dao.TaskDAO;
import com.studyflow.model.Task;

@WebServlet("/createTask")
public class CreateTaskServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        int projectId = Integer.parseInt(
                request.getParameter("projectId"));

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String status = request.getParameter("status");

        String dueDateString = request.getParameter("dueDate");

        Date dueDate = null;

        if (dueDateString != null && !dueDateString.isEmpty()) {
            dueDate = Date.valueOf(dueDateString);
        }

        Task task = new Task(
                projectId,
                null,
                title,
                description,
                status,
                dueDate
        );

        TaskDAO taskDAO = new TaskDAO();

        boolean success = taskDAO.createTask(task);

        if (success) {

            response.sendRedirect("dashboard");

        } else {

            response.setContentType("text/html;charset=UTF-8");

            response.getWriter().println(
                "<h2>Task creation failed</h2>"
                + "<p>Please check the Eclipse Console.</p>"
                + "<a href='createTask.jsp'>Try again</a>"
            );
        }
    }
}