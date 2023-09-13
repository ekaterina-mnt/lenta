<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Лента</title>
    <link rel="stylesheet" href="style.css">
    <?php
    error_reporting(E_ALL);
    ini_set("display_errors", 'on');
    ?>
</head>

<body>
    <div class="content">
        <main>
            <?php
            if ($_SERVER['REQUEST_URI'] == "/") {
                include "main.php";
            } else {
                echo "Не найден файл";
            }
            ?>
        </main>
    </div>
</body>

</html>