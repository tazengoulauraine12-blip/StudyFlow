package com.studyflow.util;

import java.sql.Connection;

public class DBConnectionTest {

    public static void main(String[] args) {

        try {
            Connection connection = DBConnection.getConnection();

            System.out.println("Connexion MySQL réussie !");
            System.out.println("StudyFlow est connecté à la base de données.");

            connection.close();

        } catch (Exception e) {

            System.out.println("Erreur de connexion !");
            e.printStackTrace();
        }
    }
}