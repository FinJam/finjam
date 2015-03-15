$(document).ready(function () {

    (function ($) {

        $('#filter').keyup(function () {

            var rex = new RegExp($(this).val(), 'i');
            $('.searchable div').hide();
            $('.searchable div').filter(function () {
                return rex.test($(this).text());
            }).show();

        })

    }(jQuery));

});
