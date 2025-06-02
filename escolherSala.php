<?php
session_start();

// Conexão
$conn = new mysqli("localhost", "root", "", "quimica_naval");
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Se ainda não tiver jogador na sessão, insere
if (!isset($_SESSION['idJogador'])) {
    $nome = $_POST['nome'] ?? null;

    if (!$nome) {
        die("Nome não informado.");
    }

    // Inserir jogador
    $stmt = $conn->prepare("INSERT INTO jogador (nome) VALUES (?)");
    $stmt->bind_param("s", $nome);
    $stmt->execute();

    $_SESSION['idJogador'] = $conn->insert_id;
    $_SESSION['nome'] = $nome;

    $stmt->close();
}

$nome = $_SESSION['nome'] ?? '';

// Consultar jogadores existentes
$result = $conn->query("SELECT idJogador, nome FROM jogador ORDER BY idJogador ASC");

$conn->close();
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Escolher Sala</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <!-- Título -->
    <header class="py-4 bg-primary text-white text-center shadow-sm mb-5">
        <h1 class="m-0">Química Naval</h1>
    </header>

    <div class="container">
        <div class="text-center mb-4">
            <h2>Bem-vindo, <?php echo htmlspecialchars($nome); ?>!</h2>
        </div>

        <div class="row justify-content-center mb-4">
            <div class="col-md-4">
                <form action="criarPartida.php" method="post">
                    <button type="submit" class="btn btn-success btn-lg w-100">Criar Sala</button>
                </form>
            </div>
        </div>

        <div class="row justify-content-center mb-5">
            <div class="col-md-6">
                <form action="entrarPartida.php" method="post" class="card p-4 shadow-sm">
                    <div class="mb-3">
                        <label for="sala" class="form-label">Digite o ID da sala:</label>
                        <input type="number" name="sala" id="sala" class="form-control" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Entrar na Sala</button>
                    </div>
                </form>
            </div>
        </div>

        <h3 class="text-center mb-3">Jogadores já cadastrados:</h3>
        <ul class="list-group mb-5">
            <?php while ($row = $result->fetch_assoc()): ?>
                <li class="list-group-item">
                    <strong>ID <?php echo $row['idJogador']; ?>:</strong> <?php echo htmlspecialchars($row['nome']); ?>
                </li>
            <?php endwhile; ?>
        </ul>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>