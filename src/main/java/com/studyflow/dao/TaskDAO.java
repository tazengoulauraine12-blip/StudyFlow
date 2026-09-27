package com.studyflow.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.studyflow.model.Task;
import com.studyflow.util.DBConnection;

public class TaskDAO {

    public boolean createTask(Task task) {

        String sql = "INSERT INTO Tasks "
                   + "(project_id, assigned_to, title, description, status, due_date) "
                   + "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, task.getProjectId());

            if (task.getAssignedTo() == null) {
                statement.setNull(2, java.sql.Types.INTEGER);
            } else {
                statement.setInt(2, task.getAssignedTo());
            }

            statement.setString(3, task.getTitle());
            statement.setString(4, task.getDescription());
            statement.setString(5, task.getStatus());
            statement.setDate(6, task.getDueDate());

            return statement.executeUpdate() == 1;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Task> getTasksByUser(int userId) {

        List<Task> tasks = new ArrayList<>();

        String sql = "SELECT t.* FROM Tasks t "
                   + "JOIN Projects p ON t.project_id = p.project_id "
                   + "WHERE p.created_by = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, userId);

            ResultSet result = statement.executeQuery();

            while (result.next()) {

                Task task = new Task();

                task.setTaskId(result.getInt("task_id"));
                task.setProjectId(result.getInt("project_id"));
                task.setAssignedTo((Integer) result.getObject("assigned_to"));
                task.setTitle(result.getString("title"));
                task.setDescription(result.getString("description"));
                task.setStatus(result.getString("status"));
                task.setDueDate(result.getDate("due_date"));

                tasks.add(task);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
       

        return tasks;
    }
    public boolean updateTaskStatus(int taskId, String status) {

        String sql = "UPDATE Tasks SET status = ? WHERE task_id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, status);
            statement.setInt(2, taskId);

            return statement.executeUpdate() == 1;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}