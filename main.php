<p>
    <textarea class="create-post" type="text" value="Что у вас нового?">
</textarea>
</p>

<p>
    <button type="submit" class="publish">
        Опубликовать
    </button>
</p>

<?php
$link = mysqli_connect('localhost', 'root', '', 'lenta');

if (!$link) {
    echo "Ошибка доступа к базе данных";
} else {
    $posts = mysqli_query($link, "SELECT * FROM posts");

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
}
