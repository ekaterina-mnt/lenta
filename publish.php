<?php

include "db.php";

$text = $_POST['text'];

if ($text) {
$timestamp = date("Y-m-d H:i:s");

mysqli_query($db, "INSERT INTO posts (text, timestamp, likes) VALUES ('$text', '$timestamp', 0)");

} else {
    session_start();
    $_SESSION['post_error'] = "Введите текст поста";
}

header("Location: /");
