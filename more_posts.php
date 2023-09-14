<?php
include "db.php";

$startFrom = $_POST['startFrom'];

$res_posts = mysqli_query($db, "SELECT * FROM posts LIMIT {$startFrom}, 10");

$res_com = mysqli_query($db, "SELECT post_id, count(comment_id) as count FROM post_comment GROUP BY post_id");

if ($res_com->num_rows) {
    $comments = array();
    while ($row = mysqli_fetch_assoc($res_com)) {
        $comments["$row[post_id]"] = $row['count'];
    }
}

$posts = [];
while ($row = mysqli_fetch_assoc($res_posts)) {
    if (in_array($row['id'], array_keys($comments))) {
        $row['comments'] = $comments["$row[id]"];
    } else {
        $row['comments'] = 0;
    }

    $posts[] = $row;
}

echo json_encode($posts);