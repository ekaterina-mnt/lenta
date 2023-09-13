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
?>

<div class="all-posts-wrapper">
    <?php
    if ($posts->num_rows) {
        foreach ($posts as $post) { ?>
            <div class="post-wrapper">
                <p>
                    Статья <?= $post['id'] ?>
                </p>
                <p>
                    <?= $post['timestamp'] ?>
                </p>
                <p>
                    <?= $post['text'] ?>
                </p>

            </div>
    <?php
        }
    }
    ?>
</div>