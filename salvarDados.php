<?php
session_start();

$idJogador = $_SESSION['idJogador'] ?? null;
$idJogada = $_SESSION['idJogada'] ?? null;
$idElemento = $_POST['id'] ?? null;

if (!$idJogador || !$idJogada || !$idElemento) {
    die("Dados incompletos.");
}

$conn = new mysqli('localhost', 'root', '', 'quimica_naval');
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Verificar se o jogador é o jogador1 ou jogador2 da jogada
$stmt = $conn->prepare("SELECT idJogador1, idJogador2 FROM jogada WHERE idJogada = ?");
$stmt->bind_param("i", $idJogada);
$stmt->execute();
$result = $stmt->get_result();
if ($row = $result->fetch_assoc()) {
    if ($row['idJogador1'] == $idJogador) {
        $sql = "UPDATE jogada SET idElemento1 = ? WHERE idJogada = ?";
    } elseif ($row['idJogador2'] == $idJogador) {
        $sql = "UPDATE jogada SET idElemento2 = ? WHERE idJogada = ?";
    } else {
        die("Jogador não pertence à jogada.");
    }
} else {
    die("Jogada não encontrada.");
}
$stmt->close();

// Executar update
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $idElemento, $idJogada);
if ($stmt->execute()) {
    echo "Elemento salvo com sucesso!";
} else {
    echo "Erro ao salvar elemento: " . $stmt->error;
}
$stmt->close();
$conn->close();
?>
