<?php
session_start();
$idJogador1 = $_SESSION['idJogador'];

$conn = new mysqli('localhost', 'root', '', 'quimica_naval');
if ($conn->connect_error) {
    die("Erro: " . $conn->connect_error);
}

// Cria a partida com idJogador1
$stmt = $conn->prepare("INSERT INTO jogada (idJogador1, idJogador2, idElemento1, idElemento2) VALUES (?, NULL, NULL, NULL)");
$stmt->bind_param("i", $idJogador1);
if ($stmt->execute()) {
    $_SESSION['idJogada'] = $conn->insert_id;
    header("Location: index.php"); // Redireciona para o jogo
    exit;
} else {
    echo "Erro ao criar partida: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
