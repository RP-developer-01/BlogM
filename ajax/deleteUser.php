<?php
$id = $_POST['id'];
$error = '';

if($error != '') {
    echo $error;
    exit();
}

require_once "../lib/mysql.php";

$sql = 'DELETE FROM `users` WHERE `users`.`id` = (?)';
$query = $pdo->prepare($sql);
$query->execute(array($id));

echo 'Done';