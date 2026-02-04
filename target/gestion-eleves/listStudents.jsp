<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Élèves</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .table-container { margin-top: 40px; }
        .card { border-radius: 12px; overflow: hidden; }
        .table thead { background-color: #0d6efd; color: white; }
    </style>
</head>
<body>

<div class="container table-container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-dark">🎓 Liste des élèves</h2>
        <a href="index.jsp" class="btn btn-outline-primary">🏠 Retour Accueil</a>
    </div>

    <div class="card shadow-sm">
        <div class="table-responsive">
            <table class="table table-hover mb-0">
                <thead>
                    <tr>
                        <th class="py-3 px-4">Nom</th>
                        <th class="py-3">Email</th>
                        <th class="py-3">Classe</th>
                        <th class="py-3 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<String[]> students = (List<String[]>) request.getAttribute("students");
                        if (students != null && !students.isEmpty()) {
                            for (String[] s : students) {
                    %>
                    <tr>
                        <td class="align-middle px-4"><strong><%= s[0] %></strong></td>
                        <td class="align-middle"><%= s[1] %></td>
                        <td class="align-middle"><span class="badge bg-info text-dark"><%= s[2] %></span></td>
                        <td class="text-center">
                            <button class="btn btn-sm btn-light border">Modifier</button>
                            <button class="btn btn-sm btn-danger">Supprimer</button>
                        </td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="4" class="text-center py-5 text-muted">
                            Aucun élève trouvé dans la base de données.
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
    
    <div class="mt-3 text-end">
        <a href="addStudent.jsp" class="btn btn-success">+ Ajouter un nouvel élève</a>
    </div>
</div>

</body>
</html>