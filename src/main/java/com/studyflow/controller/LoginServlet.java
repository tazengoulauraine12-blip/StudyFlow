package com.studyflow.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.studyflow.util.DBConnection;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String sql = "SELECT * FROM Users WHERE email = ? AND password = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, email);
            statement.setString(2, password);

            ResultSet result = statement.executeQuery();

            if (result.next()) {

                HttpSession session = request.getSession();

                session.setAttribute("userId", result.getInt("user_id"));
                session.setAttribute("firstName", result.getString("first_name"));
                session.setAttribute("lastName", result.getString("last_name"));
                session.setAttribute("email", result.getString("email"));

                response.sendRedirect("dashboard");

            } else {

                response.setContentType("text/html;charset=UTF-8");

                response.getWriter().println(
                    "<h2>Login failed</h2>"
                    + "<p>Incorrect email or password.</p>"
                    + "<a href='login.jsp'>Try again</a>"
                );
            }

        } catch (Exception e) {

            e.printStackTrace();

            response.setContentType("text/html;charset=UTF-8");

            response.getWriter().println(
                "<h2>Database error</h2>"
                + "<p>Please check the Eclipse Console.</p>"
            );
        }
    }
}