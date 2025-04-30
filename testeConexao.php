<?php
$conn = new mysqli('localhost', 'root', 'Jr9&zGm3@wL8F6bQ', 'mysql'); // ← troque '123456' pela sua senha real

if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

echo "Conexão bem-sucedida!";
?>