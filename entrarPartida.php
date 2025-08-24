<?php
session_start();
$idJogador2 = $_SESSION['idJogador'] ?? null;

if (!$idJogador2) {
    die("Jogador não autenticado.");
}

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
        // Buscar o ID da jogada que foi atualizada
        $stmt2 = $conn->prepare("SELECT idJogada FROM jogada WHERE idJogador1 = ? AND idJogador2 = ?");
        $stmt2->bind_param("ii", $sala, $idJogador2);
        $stmt2->execute();
        $result = $stmt2->get_result();
        
        if ($row = $result->fetch_assoc()) {
            // Salvar o idJogada na sessão do jogador 2
            $_SESSION['idJogada'] = $row['idJogada'];
            header("Location: index.php");
            exit;
        } else {
            echo "Erro: não foi possível obter o ID da jogada.";
        }
        $stmt2->close();
    } else {
        echo "Erro: sala inexistente ou já preenchida.";
    }

    $stmt->close();
    $conn->close();
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Entrar na Sala</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Entrar na Sala</h4>
                    </div>
                    <div class="card-body">
                        <form method="post">
                            <div class="mb-3">
                                <label for="sala" class="form-label">Digite o ID da sala para entrar:</label>
                                <input type="number" name="sala" id="sala" class="form-control" required>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Entrar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
