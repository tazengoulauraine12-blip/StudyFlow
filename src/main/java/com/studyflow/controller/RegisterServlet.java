package com.studyflow.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.studyflow.dao.UserDAO;
import com.studyflow.model.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User(
                firstName,
                lastName,
                email,
                password
        );

        UserDAO userDAO = new UserDAO();

        boolean success = userDAO.registerUser(user);

        if (success) {

            response.sendRedirect("login.jsp");

        } else {

            response.setContentType("text/html;charset=UTF-8");

            response.getWriter().println(
                "<h2>Registration failed</h2>"
                + "<p>Email may already exist.</p>"
                + "<a href='register.jsp'>Try again</a>"
            );
        }
    }
}
