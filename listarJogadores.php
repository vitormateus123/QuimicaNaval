<?php
$conn = new mysqli('localhost', 'root', '', 'quimica_naval');

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$result = $conn->query("SELECT nome FROM jogador ORDER BY nome");

$jogadores = [];
while ($row = $result->fetch_assoc()) {
    $jogadores[] = $row['nome'];
}

header('Content-Type: application/json');
echo json_encode($jogadores);
?>
