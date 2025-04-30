<?php
$host = 'localhost';
$db = 'quimica_naval';
$user = 'root';
$pass = 'Jr9&zGm3@wL8F6bQ';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

$nomeElemento = $_GET['elemento'] ?? '';

$stmt = $conn->prepare("SELECT descricaoDica FROM dica WHERE elemento = ?");
$stmt->bind_param("s", $nomeElemento);
$stmt->execute();
$stmt->bind_result($dica);

if ($stmt->fetch()) {
    echo $dica;
} else {
    echo "Nenhuma dica encontrada para '$nomeElemento'.";
}

$stmt->close();
$conn->close();

?>
