$(document).ready(function () {
    let inProcess = false;
    let startFrom = 10;

    $(window).scroll(function () {
        if ($(window).scrollTop() + $(window).height() + 2 >= $(document).height() && !inProcess) {
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
                        $('.all-posts-wrapper').append(
                            '<div class="post-wrapper">' +
                            '<a href="/posts/' + data.id + '">' +
                            '<p>Статья ' + data.id + '</p>' +
                            '<p>' + data.timestamp + '</p>' +
                            '<p>' + data.text + '</p>' +

                            '<br>' +
                            '<span>' +
                            data.comments +
                            '<svg class="fav" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">< g id = "line_comment" data - name="line comment" ><path d="M25.17,5H6.83A2.76,2.76,0,0,0,4,7.67V19.33A2.76,2.76,0,0,0,6.83,22H8.58v4a1,1,0,0,0,.56.9,1,1,0,0,0,.44.1,1,1,0,0,0,.62-.21L16.34,22h8.83A2.76,2.76,0,0,0,28,19.33V7.67A2.76,2.76,0,0,0,25.17,5ZM26,19.33a.78.78,0,0,1-.83.67H16a1,1,0,0,0-.61.21L10.58,24V21a1,1,0,0,0-1-1H6.83A.78.78,0,0,1,6,19.33V7.67A.78.78,0,0,1,6.83,7H25.17a.78.78,0,0,1,.83.67Z" /><path d="M22,10H10a1,1,0,0,0,0,2H22a1,1,0,0,0,0-2Z" /><path d="M22,15H10a1,1,0,0,0,0,2H22a1,1,0,0,0,0-2Z" /></g ></svg >' +
                            '</span >' +

                            '</a>' +
                            '<span class="add_like" id="' + data.id + '">' +
                            '<span id="id' + data.id + '">' + data.likes + " " + 
                            '</span>' +
                            '<svg class="fav like" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve"><g><g><path d="M407.815,0h-303.63c-21.38,0-41.736,6.707-58.87,19.394c-3.341,2.474-4.044,7.188-1.57,10.529s7.188,4.042,10.529,1.57 c14.522-10.754,31.781-16.439,49.911-16.439h303.629c46.296,0,83.96,37.665,83.96,83.96v199.144 c0,46.296-37.665,83.96-83.96,83.96H279.48c-3.101,0-6.097,1.296-8.217,3.553l-103.068,109.59 c-2.225,2.364-4.805,1.693-5.81,1.296c-1.006-0.398-3.345-1.676-3.345-4.924V393.4c0-6.22-5.06-11.28-11.28-11.28h-43.575 c-46.296,0-83.961-37.665-83.961-83.96V99.014c0-17.032,5.069-33.429,14.66-47.417c2.35-3.429,1.477-8.113-1.951-10.464 c-3.427-2.351-8.114-1.476-10.464,1.951C11.153,59.59,5.171,78.93,5.171,99.014v199.144c0,54.596,44.418,99.014,99.015,99.014 h39.801v94.461c0,8.398,5.044,15.824,12.851,18.918c2.461,0.975,5.017,1.449,7.543,1.449c5.489,0,10.84-2.237,14.78-6.425 l101.95-108.402h126.704c54.596,0,99.014-44.418,99.014-99.014V99.014C506.829,44.418,462.412,0,407.815,0z" /></g></g><g><g><path d="M364.119,120.935c-26.124-26.125-68.635-26.123-94.761,0l-13.119,13.12c-0.035,0.035-0.143,0.143-0.344,0.143 c-0.2,0-0.307-0.106-0.342-0.143l-12.911-12.91c-26.125-26.125-68.635-26.124-94.76,0c-26.125,26.125-26.125,68.636,0,94.761 l97.035,97.035c2.935,2.935,6.837,4.551,10.987,4.551s8.053-1.617,10.987-4.552l53.325-53.334c2.94-2.94,2.94-7.706-0.001-10.644 c-2.94-2.939-7.707-2.94-10.644,0.001l-53.325,53.334c-0.035,0.035-0.143,0.141-0.342,0.141c-0.201,0-0.308-0.106-0.343-0.143 l-97.035-97.035c-20.256-20.257-20.256-53.215,0-73.472s53.215-20.255,73.471,0l12.91,12.91c2.935,2.935,6.837,4.552,10.987,4.552 c4.151,0,8.052-1.616,10.988-4.551l13.12-13.12c20.26-20.255,53.216-20.255,73.472,0c20.256,20.256,20.256,53.214,0,73.472 l-22.472,22.477c-2.94,2.94-2.94,7.706,0.001,10.644c2.94,2.939,7.706,2.94,10.644-0.001l22.473-22.476 C390.244,189.57,390.244,147.06,364.119,120.935z" /></g></g></svg>' +
                            '</span>' +
                            '</div>');
                    });
                };
                inProcess = false;
                startFrom += 10;
            })
        }
    })
});