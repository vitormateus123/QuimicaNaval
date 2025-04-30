<?php
session_start(); // Iniciar a sessão no topo

$host = 'localhost';
$banco = 'quimica_naval';
$usuario = 'root';
$senha = 'Jr9&zGm3@wL8F6bQ';

// Conectar ao banco
$conn = new mysqli($host, $usuario, $senha, $banco);

// Verificar conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Receber o nome do formulário
$nome = $_POST['txtNome'];

// Salvar no banco
$sql = "INSERT INTO jogador (nome) VALUES (?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $nome);

if ($stmt->execute()) {
    // Salvar o nome na sessão
    $_SESSION['nome'] = $nome;

    // Redirecionar para a index.html
    header("Location: index.php");
    exit();
} else {
    echo "Erro ao salvar: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
