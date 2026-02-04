
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un élève</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f4f7f6; }
        .form-container { max-width: 500px; margin-top: 50px; }
        .card { border-radius: 15px; border: none; }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center">
    <div class="form-container w-100">
        <div class="card shadow">
            <div class="card-header bg-success text-white text-center py-3">
                <h4 class="mb-0">Inscription Nouvel Élève</h4>
            </div>
            <div class="card-body p-4">
                <form action="addStudent" method="post">
                    <div class="mb-3">
                        <label class="form-label">Nom complet</label>
                        <input type="text" name="name" class="form-control" placeholder="Ex: Jean Dupont" required>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Adresse Email</label>
                        <input type="email" name="email" class="form-control" placeholder="exemple@mail.com" required>
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label">Classe / Niveau</label>
                        <input type="text" name="classe" class="form-control" placeholder="Ex: Terminale S" required>
                    </div>
                    
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-success btn-lg">Enregistrer l'élève</button>
                        <a href="index.jsp" class="btn btn-outline-secondary">Annuler et retourner</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>