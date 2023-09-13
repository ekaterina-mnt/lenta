<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Лента</title>
    <link rel="stylesheet" href="/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="/scripts.js"></script>
    <?php
    error_reporting(E_ALL);
    ini_set("display_errors", 'on');
    ?>
</head>

<body>
    <div class="content">
        <main>
            <?php
            include "db.php";

            if ($_SERVER['REQUEST_URI'] == "/") {
                include "main.php";
            } elseif (preg_match("#/posts/(\d+)#", $_SERVER['REQUEST_URI'], $post_id)) {
                $post_id = $post_id[1];
                include "post_show.php";
            } else {
                echo "Не найден файл";
            }
            ?>
        </main>
    </div>
</body>

</html>