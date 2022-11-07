<?php
    $mess = trim(filter_var($_POST['message'], FILTER_UNSAFE_RAW));

    if(strlen($mess) == 0)
        exit();

    require_once "../lib/mysql.php"; 

    $sql = 'INSERT INTO chat(message) VALUES (?)';
    $query = $pdo->prepare($sql);
    $query->execute([$mess]);
?>