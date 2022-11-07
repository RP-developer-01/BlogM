<aside>
    <div class="info">
        <h2>Интересние факти</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis accusamus debitis facilis sit, ducimus quaerat. Sed itaque repellat esse dignissimos incidunt aliquid aut magnam aperiam ut, soluta inventore explicabo temporibus?</p>
        <img src="https://itproger.com/img/intensivs/back-end.svg" alt="">
    </div>

    <div class="chat_comments">
        <?php 
            require_once "./lib/mysql.php"; 

            $sql = 'SELECT * FROM `chat` ORDER BY `id` ASC';
            $query = $pdo->prepare($sql);
            $query->execute();
            $messages = $query->fetchAll(PDO::FETCH_ASSOC);

            if(count($messages) == 0)
                echo '<div class="none_mess">Пока сообщений еще нет</div>';
            else {
                foreach($messages as $el) {
                    echo '<div class="mess">' . $el['message'] . '</div>';
                }
            }

        ?>
    </div>

    <form>
        <input type="text" name="chat_mess" id="chat_mess" placeholder="Сообщение">
        <button type="button" id="message_send" >Отправить</button>
    </form>
</aside>