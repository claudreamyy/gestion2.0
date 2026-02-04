
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DREAM SCHOOL | Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;600;800&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary-gradient: linear-gradient(135deg, #6366f1 0%, #4338ca 100%);
            --glass: rgba(255, 255, 255, 0.9);
        }
        body { 
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: #f1f5f9;
            color: #0f172a;
            min-height: 100vh;
        }
        .navbar {
            background: var(--glass);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(0,0,0,0.05);
        }
        .hero-card {
            background: var(--primary-gradient);
            border-radius: 24px;
            color: white;
            padding: 3rem;
            margin-bottom: 2rem;
            box-shadow: 0 20px 25px -5px rgba(0,0,0,0.1);
        }
        .action-card {
            background: white;
            border: none;
            border-radius: 20px;
            padding: 2rem;
            transition: all 0.3s ease;
            text-decoration: none;
            color: inherit;
            display: block;
            height: 100%;
            box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05);
        }
        .action-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 25px -5px rgba(0,0,0,0.1);
            color: #6366f1;
        }
        .icon-circle {
            width: 60px;
            height: 60px;
            border-radius: 15px;
            background: #f0f9ff;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            font-size: 1.5rem;
            color: #0369a1;
        }
    </style>
</head>
<body>
    <nav class="navbar sticky-top mb-5">
        <div class="container">
            <span class="navbar-brand fw-800 text-primary fs-4">DREAM<span class="text-dark">SCHOOL</span></span>
            <div class="d-flex align-items-center">
                <span class="badge bg-success-subtle text-success border border-success-subtle px-3 py-2">
                    <i class="bi bi-cpu me-1"></i> Tomcat 10.1 Active
                </span>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="hero-card">
            <h1 class="display-5 fw-800 mb-2">Bonjour, Admin</h1>
            <p class="opacity-75 fs-5">Bienvenue sur votre plateforme de gestion des effectifs.</p>
        </div>

        <div class="row g-4">
            <div class="col-md-6">
                <a href="addStudents.jsp" class="action-card">
                    <div class="icon-circle bg-primary-subtle text-primary">
                        <i class="bi bi-person-plus-fill"></i>
                    </div>
                    <h3 class="fw-600">Nouvelle Inscription</h3>
                    <p class="text-muted">Enregistrez un nouvel élève dans la base de données sécurisée.</p>
                    <span class="fw-bold">Commencer <i class="bi bi-arrow-right ms-2"></i></span>
                </a>
            </div>
            <div class="col-md-6">
                <a href="listStudents.jsp" class="action-card">
                    <div class="icon-circle bg-info-subtle text-info">
                        <i class="bi bi-table"></i>
                    </div>
                    <h3 class="fw-600">Registre Global</h3>
                    <p class="text-muted">Consultez, modifiez ou exportez la liste complète des étudiants.</p>
                    <span class="fw-bold text-info">Ouvrir le registre <i class="bi bi-arrow-right ms-2"></i></span>
                </a>
            </div>
        </div>
    </div>
</body>
</html>