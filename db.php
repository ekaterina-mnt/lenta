<?php
$db = mysqli_connect('localhost', 'root', '', 'lenta') or die("Невозможно подключиться к базе данных.");
mysqli_query($db, 'SET character_set_results = "utf8"');
