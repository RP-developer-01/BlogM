<!DOCTYPE html>
<html lang="en">
<head>
    <?php 
        $website_title = "Список всех пользователей на сайте";
        require "blocks/head.php";
    ?>
</head>
<body>
    <?php require "blocks/header.php" ?>

    <main>
        <h1>Список пользователей</h1>
        <?php
            require_once "lib/mysql.php";

            $query = $pdo->prepare('SELECT * FROM `users`');
            $query->execute();
            $users = $query->fetchAll(PDO::FETCH_ASSOC);
            foreach($users as $user) {
                echo '<div class="infoAllUsers"><b>Имя: </b>' . $user['name'] . ', <b>логин: </b>' . $user['login'] . '<button id'.$user['id'].' onclick="deleteUser('.$user['id'].',this);">Удалить</button></div>';
            };
        ?>

    </main>
    <?php require "blocks/aside.php" ?>
    <?php require "blocks/footer.php" ?>
    <script>
        function deleteUser(id, this2) {
            var $t = $(this2);
            $.ajax({
                url: 'ajax/deleteUser.php',
                type: 'POST',
                cache: false,
                data: {'id': id},
                success: function(data) {
                    if(data === "Done") {
                        $t.closest('.infoAllUsers').remove();
                    }
                    else {
                        console.log('ssss');
                    }
                    
                }
            });
        }
    </script>

</body>
</html>