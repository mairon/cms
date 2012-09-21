$(function () {
    $('.box').each(function() {
        var content = $(this).find('.content'),
            tab     = $('> ul li', this);
        $('#tab', content).eq(0).show();
        tab.click(function () {
            tab.removeClass('active');
            $(this).addClass('active');
            $('#tab', content).hide().eq($(this).index()).show(); 
        });
    });
});