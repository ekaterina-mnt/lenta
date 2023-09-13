<?php
include "db.php";

$post_id = $_POST['post_id'];

$likes = mysqli_query($db, "SELECT likes FROM posts WHERE id=$post_id");
$likes = mysqli_fetch_assoc($likes)['likes'] + 1;
mysqli_query($db, "UPDATE posts SET likes=$likes WHERE id=$post_id");

echo $likes;

