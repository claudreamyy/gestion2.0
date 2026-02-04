package com.gestion.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

// Cette annotation lie l'URL du bouton à ce code Java
@WebServlet("/list-students")
public class StudentServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<String[]> students = new ArrayList<>();
        
        // Configuration de la connexion MySQL
        String url = "jdbc:mysql://localhost:3306/votre_base_de_donnees";
        String user = "root";
        String password = ""; // Par défaut vide sur WAMP/XAMPP

        try {
            // Utilisation du connecteur automatisé via Maven
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM eleves");

            while (rs.next()) {
                students.add(new String[]{
                    rs.getString("id"),
                    rs.getString("nom"),
                    rs.getString("prenom"),
                    rs.getString("email")
                });
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // On envoie la liste à la page JSP
        request.setAttribute("listStudents", students);
        request.getRequestDispatcher("list-students.jsp").forward(request, response);
    }
}