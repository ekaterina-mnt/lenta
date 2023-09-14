$(function () {
    $('body').delegate('span.add_like', "click", function () {
        console.log('hi');

        let post_id = this.id;

        $.ajax({
            url: 'add_like.php',
            method: 'POST',
            data: { "post_id": post_id }
        }).done(function (likes) {
            let sel = 'span#id' + post_id;
            $(sel).text(" " + likes + " ");
        });
    });
});