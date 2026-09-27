package com.studyflow.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.studyflow.dao.TaskDAO;

@WebServlet("/updateTask")
public class UpdateTaskServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String taskIdString = request.getParameter("taskId");
        String status = request.getParameter("status");

        if (taskIdString == null || status == null) {
            response.sendRedirect("dashboard");
            return;
        }

        try {
            int taskId = Integer.parseInt(taskIdString);

            TaskDAO taskDAO = new TaskDAO();
            taskDAO.updateTaskStatus(taskId, status);

            response.sendRedirect("dashboard");

        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("dashboard");
        }
    }
}