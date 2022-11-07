<?php
setcookie('login1', '', time() - 3600 * 24 * 30 * 30, "/");
unset($_COOKIE['login1']);