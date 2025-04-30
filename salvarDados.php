<?php
session_start();

$el1 = $_POST['elemento1'] ?? null;

if ($el1) {
    echo "Você selecionou: $el1";
    // Aqui você pode salvar no banco ou em sessão
    $_SESSION['selecionados'] = [$el1];

    // Redirecionar se quiser
    // header("Location: outraPagina.php");
    // exit();
} else {
    echo "Dados incompletos.";
}
?>