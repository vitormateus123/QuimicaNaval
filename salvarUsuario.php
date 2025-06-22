<?php
session_start();

$nome = $_POST['nome'];
$acao = $_POST['acao'];

$conn = new mysqli('localhost', 'root', '', 'quimica_naval');

if ($conn->connect_error) {
    die("Erro: " . $conn->connect_error);
}

// Inserir jogador
$stmt = $conn->prepare("INSERT INTO jogador (nome) VALUES (?)");
$stmt->bind_param("s", $nome);
$stmt->execute();

// Obter o id do jogador recém-inserido
$idJogador = $conn->insert_id;
$_SESSION['idJogador'] = $idJogador;
$_SESSION['nome'] = $nome;

$stmt->close();
$conn->close();
// Redirecionar
if ($acao === 'criar') {
    header("Location: criarPartida.php");
} else {
    header("Location: entrarPartida.php");
}
exit;
?>
