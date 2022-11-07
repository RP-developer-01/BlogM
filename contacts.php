<!DOCTYPE html>
<html lang="en">
<head>
    /*Короче пхп коли хоч писати на ньому то треба выдкрити такы штуки <?php і закрити тоже треба ?> <?php code ?>*/
<?php 
$website_title = "Контакты";

require "blocks/head.php" ?>
</head>
<body>
    <?php require "blocks/header.php" ?>

    <main>
        <h1>Контакты</h1>
        <form>
            <label for="username">Ваше имя</label>
            <input type="text" name="username" id="username">

            <label for="email">Email</label>
            <input type="email" name="email" id="email"></input>

            <label for="mess">Сообщение</label>
            <textarea name="mess" id="mess"></textarea>

            <div class="error-mess" id="error-block"></div>

            <button type="button" id="mess_send">Отправить</button>
        </form>
    </main>

    <?php require "blocks/aside.php" ?>
    <?php require "blocks/footer.php" ?>
    <script>
        $('#mess_send').click(function() {
            let name = $('#username').val();
            let email = $('#email').val();
            let mess = $('#mess').val();

            $.ajax({
                url: 'ajax/mail.php',
                type: 'POST',
                cache: false,
                data: {'name': name, 'email': email, 'mess': mess},
                dataType: 'html',
                success: function(data) {
                    if(data === "Done") {
                        $('#mess_send').text("Всьо готово");
                        $("#error-block").hide();
                        $('#username').val("");
                        $('#email').val("");
                        $('#mess').val("");
                    }
                    else {
                        $("#error-block").show();
                        $("#error-block").text(data);
                    }
                }
            });
        })
    </script>

</body>
</html>