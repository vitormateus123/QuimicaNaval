<?php
session_start();

$elemento = $_POST['elemento'] ?? null;
$nomeUsuario = $_SESSION['nome'];

echo "<script> console.log('OK'); </script>";
if ($elemento) {
    $_SESSION['elementoSelecionado'] = $elemento;
    echo "Elemento recebido: $elemento";
    // Aqui você pode salvar no banco ou fazer outra ação
} else {
    echo "Nenhum elemento recebido.";
}

    $host = 'localhost';
    $banco = 'quimica_naval';
    $usuario = 'root';
    $senha = '';

    // Conectar
    $conn = new mysqli($host, $usuario, $senha, $banco);

    // Verificar conexão
    if ($conn->connect_error) {
        die("Erro na conexão: " . $conn->connect_error);
    }

    // Consulta SQL
    $sql = "SELECT idDica FROM dica where elemento like '" . $elemento . "'";
    $result = $conn->query($sql);
    $num;
    // Mostrar resultados
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $num = $row["idDica"];
        }
    } else {
        echo "Nenhum jogador encontrado.";
    }


    $sql = "SELECT idJogador FROM jogador where nome like '" . $nomeUsuario . "'";
    $result = $conn->query($sql);
    $num;
    // Mostrar resultados
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $idJog = $row["idJogador"];
        }
    } else {
        echo "Nenhum jogador encontrado.";
    }

    $conn = new mysqli($host, $usuario, $senha, $banco);

    // Verificar conexão
    if ($conn->connect_error) {
        die("Falha na conexão: " . $conn->connect_error);
    }
    
    // Salvar no banco
    $sql = "INSERT INTO jogada (idJogador1, idJogador2, idElemento1, idElemento2) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iiii", $idJog, $idJog, $num, $num);
    if (!$stmt->execute()) {
        die("Erro ao executar: " . $stmt->error);
    } else {
        echo "Dados inseridos com sucesso!";
    }
    $stmt->close();
    $conn->close();
?>
