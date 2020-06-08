 $(document).ready(function(){
    var url = window.location.href;
    
    if ( url.indexOf('/en') > -1) {
        $('.span-view-more').text('View more');
    }
});