<?php
include "db.php";

$startFrom = $_POST['startFrom'];

$res = mysqli_query($db, "SELECT * FROM posts LIMIT {$startFrom}, 10");
$posts = [];
while ($row = mysqli_fetch_assoc($res)) {
    $posts[] = $row;
}

echo json_encode($posts);