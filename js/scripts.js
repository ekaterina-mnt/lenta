$(document).ready(function () {
    let inProcess = false;
    let startFrom = 10;

    $(window).scroll(function () {
        if ($(window).scrollTop() + $(window).height() + 1 >= $(document).height() && !inProcess) {
            $.ajax({
                url: "more_posts.php",
                method: "POST",
                data: { "startFrom": startFrom },
                beforeSend: function () {
                    inProcess = true;
                }
            }).done(function (data) {
                data = jQuery.parseJSON(data);
                if (data.length) {

                    $.each(data, function (index, data) {
                        $('.all-posts-wrapper').append('<div class="post-wrapper"><p>Статья ' + data.id + "</p><p>" + data.timestamp + "</p><p>" + data.text + "</p></div>");
                    });
            };
            inProcess = false;
            startFrom += 10;
        })
}
    })
});