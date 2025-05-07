<?php
session_start();
session_destroy();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela de Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
</head>

<body class="p-5">

    <form action="escolherSala.php" method="post">
        <fieldset class="p-5 rounded-4 shadow-lg">
            <label for="nome" class="form-label">Digite seu nome:</label>
            <input type="text" name="nome" id="nome" required class="form-control"> <br><br>
            <div class="text-center">
            <button type="submit" class="btn btn-outline-success btn-lg shadow-sm">Entrar</button>
            </div>
        </fieldset>
    </form>

</body>

</html>