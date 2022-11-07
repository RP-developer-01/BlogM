<?php
    require_once "../lib/mysql.php"; 

    $sql = 'SELECT * FROM `chat` ORDER BY `id` ASC';
    $query = $pdo->prepare($sql);
    $query->execute();
    $messages = $query->fetchAll(PDO::FETCH_ASSOC);

    if(count($messages) == 0) {
        echo '<div class="none_mess">Пока сообщений еще нет</div>';
        exit();
    }    
    
    $html = '';
    foreach($messages as $el)
        $html .= '<div class="mess">' . $el['message'] . '</div>';

    echo $html;
?>

