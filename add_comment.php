<?php

include "db.php";

$text = $_POST['text'];
$post_id = $_POST['post_id'];

if ($text) {
$timestamp = date("Y-m-d H:i:s");

mysqli_query($db, "INSERT INTO comments (text, timestamp) VALUES ('$text', '$timestamp')");
$comment_id = mysqli_insert_id($db);

mysqli_query($db, "INSERT INTO post_comment (post_id, comment_id) VALUES ('$post_id', '$comment_id')");


} else {
    session_start();
    $_SESSION['post_error'] = "Введите текст комментария";
}

header("Location: /posts/$post_id");
