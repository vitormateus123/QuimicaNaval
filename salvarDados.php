<?php
session_start();

// Debug: verificar se a sessão está funcionando
error_log("SESSION no salvarDados: " . print_r($_SESSION, true));

$idJogador = $_SESSION['idJogador'] ?? null;
$idJogada = $_SESSION['idJogada'] ?? null;
$idElemento = $_POST['id'] ?? null;

// Verificar dados obrigatórios com mensagem mais detalhada
if (!$idJogador) {
    die("Erro: idJogador não encontrado na sessão.");
}
if (!$idJogada) {
    die("Erro: idJogada não encontrado na sessão. Verifique se a partida foi criada/entrada corretamente.");
}
if (!$idElemento) {
    die("Erro: idElemento não recebido.");
}

// Resto do código permanece o mesmo...
$conn = new mysqli('localhost', 'root', '', 'quimica_naval');
if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Verificar se o jogador é o jogador1 ou jogador2 da jogada
$stmt = $conn->prepare("SELECT idJogador1, idJogador2 FROM jogada WHERE idJogada = ?");
$stmt->bind_param("i", $idJogada);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    die("Jogada não encontrada.");
}

$row = $result->fetch_assoc();
$sql = "";
$fieldName = "";

if ($row['idJogador1'] == $idJogador) {
    $sql = "UPDATE jogada SET idElemento1 = ? WHERE idJogada = ?";
    $fieldName = "idElemento1";
} elseif ($row['idJogador2'] == $idJogador) {
    $sql = "UPDATE jogada SET idElemento2 = ? WHERE idJogada = ?";
    $fieldName = "idElemento2";
} else {
    die("Jogador não pertence à jogada.");
}

$stmt->close();

// Executar update
$stmt = $conn->prepare($sql);
$stmt->bind_param("ii", $idElemento, $idJogada);
if ($stmt->execute()) {
    if ($stmt->affected_rows > 0) {
        echo "Elemento salvo com sucesso! Campo atualizado: " . $fieldName;
    } else {
        echo "Nenhuma linha foi atualizada. Verifique se os dados já estão corretos.";
    }
} else {
    echo "Erro ao salvar elemento: " . $stmt->error;
}

$stmt->close()
?>