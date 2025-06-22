<?php
session_start();
$idJogador2 = $_SESSION['idJogador'];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $sala = $_POST['sala'];

    $conn = new mysqli('localhost', 'root', '', 'quimica_naval');
    if ($conn->connect_error) {
        die("Erro: " . $conn->connect_error);
    }

    // Atualiza a partida com o jogador 2
    $stmt = $conn->prepare("UPDATE jogada SET idJogador2 = ? WHERE idJogador1 = ? AND idJogador2 IS NULL");
    $stmt->bind_param("ii", $idJogador2, $sala);
    if ($stmt->execute() && $stmt->affected_rows > 0) {
        header("Location: index.php");
exit;

    } else {
        echo "Erro: sala inexistente ou já preenchida.";
    }

    $stmt->close();
    $conn->close();
    exit;
}
?>

<form method="post">
    <label>Digite o ID da sala para entrar:</label>
    <input type="number" name="sala" required>
    <button type="submit">Entrar</button>
</form>
