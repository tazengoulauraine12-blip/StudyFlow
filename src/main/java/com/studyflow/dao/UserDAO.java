package com.studyflow.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.studyflow.model.User;
import com.studyflow.util.DBConnection;

public class UserDAO {

    public boolean registerUser(User user) {

        String sql = "INSERT INTO Users "
                   + "(first_name, last_name, email, password) "
                   + "VALUES (?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());

            int result = statement.executeUpdate();

            return result == 1;

        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }
    }
}