<footer>Все права защищены</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
        //добавления сообщений в базу даных
            $('#message_send').click(function() {
                let message = $('#chat_mess').val();

                $.ajax({
                    url: 'ajax/add_mess.php',
                    type: 'POST',
                    cache: false,
                    data: {'message': message},
                    dataType: 'html',
                    success: function(data) {
                        $('#chat_mess').val("");
                    }
                });
            });

            setInterval(function() {
                $.ajax({
                    url: 'ajax/load_messes.php',
                    type: 'POST',
                    cache: false,
                    dataType: 'html',
                    success: function(data) {
                        $(".chat_comments").html(data);
                    }
                });
            }, 3000);
    </script>