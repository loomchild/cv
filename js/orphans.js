$(document).ready(function(){
    $("h2").each(function() {
        $(this).next('div,article').andSelf().wrapAll('<div class="staytogether" />');
    });
});
