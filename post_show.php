<?php
$post = mysqli_query($db, "SELECT * FROM posts WHERE id=$post_id");

if ($post->num_rows) {
    $post = mysqli_fetch_assoc($post);
?>
    <h1>Статья <?= $post['id'] ?>
    </h1>
    <div class="post-wrapper">
        <p>
            <?= $post['timestamp'] ?>
        </p>
        <p>
            <?= $post['text'] ?>
        </p>
    </div>
<?php
}
?>

<a class="back" href="/">Вернуться на главную</a>

<h2 id="com">Комментарии</h2>

<!-- //КОММЕНТАРИИ -->

<?php
$comments = mysqli_query($db, "SELECT comments.text, comments.timestamp FROM comments LEFT JOIN post_comment ON post_comment.comment_id = comments.id WHERE post_comment.post_id = $post_id ORDER BY id DESC");
?>

<div class="all-posts-wrapper">
    <?php
    if ($comments->num_rows) {
        foreach ($comments as $comment) { ?>
            <div class="post-wrapper">
                <p>
                    <?= $comment['text'] ?>
                </p>
                <p>
                    <?= $comment['timestamp'] ?>
                </p>
            </div>
    <?php
        }
    }
    ?>
</div>

<!-- //ОСТАВИТЬ КОММЕНТАРИЙ -->

<form method="POST" action="add_comment.php">
    <p>
        <textarea class="comment-post" name="text" placeholder="Напишите комментарий">
</textarea>
        <input name="post_id" type="hidden" value="<?= $post['id'] ?>">
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
        Оставить комментарий
    </button>
</p>
</form>
