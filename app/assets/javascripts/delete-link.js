$(function() {
    $('li').hover(function() {
        $(this).find('[data-show=hover]').show();
    },function() {
        $(this).find('[data-show=hover]').hide();
    });
});