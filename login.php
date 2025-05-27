<?php
session_start();
session_destroy();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Química Naval</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <!-- Título fixo no topo -->
    <header class="py-4 bg-primary text-white text-center shadow-sm">
        <h1 class="m-0">Química Naval</h1>
    </header>

    <!-- Espaço para centralizar o formulário logo abaixo -->
    <div class="d-flex justify-content-center mt-5">
        <form action="escolherSala.php" method="post" class="bg-white p-4 rounded shadow-sm w-100" style="max-width: 400px;">
            <fieldset>
                <legend class="mb-4 text-center">Bem-vindo</legend>

                <div class="mb-3">
                    <label for="nome" class="form-label">Digite seu nome:</label>
                    <input type="text" name="nome" id="nome" class="form-control" required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Entrar</button>
                </div>
            </fieldset>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

