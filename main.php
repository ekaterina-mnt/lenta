<form method="POST" action="publish.php">

    <p>
        <textarea class="create-post" name="text" placeholder="Что у вас нового?">
</textarea>
    </p>
    <?php
    session_start();
    if (isset($_SESSION['post_error'])) {
    ?>
        <p class="error"><?= $_SESSION['post_error'] ?></p>
    <?php
        unset($_SESSION['post_error']);
    } ?>

    <p>
        <button type="submit" class="publish">
            Опубликовать
        </button>
    </p>
</form>

<?php
$posts = mysqli_query($db, "SELECT * FROM posts ORDER BY id DESC LIMIT 10");

$res = mysqli_query($db, "SELECT post_id, count(comment_id) as count FROM post_comment GROUP BY post_id");

if ($res->num_rows) {
    $comments = array();
    while ($row = mysqli_fetch_assoc($res)) {
        $comments["$row[post_id]"] = $row['count'];
    }
}
var_dump($comments);
?>

<div class="all-posts-wrapper">
    <?php
    if ($posts->num_rows) {
        foreach ($posts as $post) { ?>
            <div class="post-wrapper">
                <a href="/posts/<?= $post['id'] ?>">
                    <p>
                        Статья <?= $post['id'] ?>
                    </p>
                    <p>
                        <?= $post['timestamp'] ?>
                    </p>
                    <p>
                        <?= $post['text'] ?>
                    </p>
                    <p>
                        <?php
                        if ($comments) {
                            if (in_array($post['id'], array_keys($comments))) { ?>
                                <br><span><svg class="fav" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"><g id="line_comment" data-name="line comment"><path d="M25.17,5H6.83A2.76,2.76,0,0,0,4,7.67V19.33A2.76,2.76,0,0,0,6.83,22H8.58v4a1,1,0,0,0,.56.9,1,1,0,0,0,.44.1,1,1,0,0,0,.62-.21L16.34,22h8.83A2.76,2.76,0,0,0,28,19.33V7.67A2.76,2.76,0,0,0,25.17,5ZM26,19.33a.78.78,0,0,1-.83.67H16a1,1,0,0,0-.61.21L10.58,24V21a1,1,0,0,0-1-1H6.83A.78.78,0,0,1,6,19.33V7.67A.78.78,0,0,1,6.83,7H25.17a.78.78,0,0,1,.83.67Z"/><path d="M22,10H10a1,1,0,0,0,0,2H22a1,1,0,0,0,0-2Z"/><path d="M22,15H10a1,1,0,0,0,0,2H22a1,1,0,0,0,0-2Z"/></g></svg>
                                <?= $comments[$post['id']] ?></span>
                        <?php
                            }
                        }
                        ?>
                        </span>
                </a>
            </div>
    <?php
        }
    }
    ?>
</div>