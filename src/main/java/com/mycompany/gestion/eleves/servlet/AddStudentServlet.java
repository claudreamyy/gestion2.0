package com.mycompany.gestion.eleves.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String classe = request.getParameter("classe");

        try {
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/gestion_eleves_db",
                "root",
                ""
            );

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO student(name, email, classe) VALUES (?, ?, ?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, classe);

            ps.executeUpdate();

            response.sendRedirect("listStudents");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
