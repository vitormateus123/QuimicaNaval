<?php
session_start();

// Conexão
$conn = new mysqli("localhost", "root", "Jr9&zGm3@wL8F6bQ", "quimica_naval");
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
</head>
<body>
    <h2>Bem-vindo, <?php echo htmlspecialchars($nome); ?>!</h2>

    <form action="criarPartida.php" method="post">
        <button type="submit">Criar Sala</button>
    </form>

    <form action="entrarPartida.php" method="post">
        <label for="sala">Digite o ID da sala:</label>
        <input type="number" name="sala" id="sala" required>
        <button type="submit">Entrar na Sala</button>
    </form>

    <h3>Jogadores já cadastrados:</h3>
    <ul>
        <?php while ($row = $result->fetch_assoc()): ?>
            <li>ID <?php echo $row['idJogador']; ?>: <?php echo htmlspecialchars($row['nome']); ?></li>
        <?php endwhile; ?>
    </ul>

    
</body>
</html>
