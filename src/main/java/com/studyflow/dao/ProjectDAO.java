package com.studyflow.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.studyflow.model.Project;
import com.studyflow.util.DBConnection;

public class ProjectDAO {

    // Créer un projet
    public boolean createProject(Project project) {

        String sql = "INSERT INTO Projects "
                   + "(name, description, start_date, end_date, created_by) "
                   + "VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, project.getName());
            statement.setString(2, project.getDescription());
            statement.setDate(3, project.getStartDate());
            statement.setDate(4, project.getEndDate());
            statement.setInt(5, project.getCreatedBy());

            int result = statement.executeUpdate();

            return result == 1;

        } catch (Exception e) {

            e.printStackTrace();
            return false;
        }
    }


    // Récupérer les projets d'un utilisateur
    public List<Project> getProjectsByUser(int userId) {

        List<Project> projects = new ArrayList<>();

        String sql = "SELECT * FROM Projects WHERE created_by = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, userId);

            ResultSet result = statement.executeQuery();

            while (result.next()) {

                Project project = new Project();

                project.setProjectId(result.getInt("project_id"));
                project.setName(result.getString("name"));
                project.setDescription(result.getString("description"));
                project.setStartDate(result.getDate("start_date"));
                project.setEndDate(result.getDate("end_date"));
                project.setCreatedBy(result.getInt("created_by"));

                projects.add(project);
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return projects;
    }
}