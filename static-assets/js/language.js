 $(document).ready(function(){
    var url = window.location.href;
    
    if ( url.indexOf('/en') > -1) {
        $('.span-view-more').text('View more');
        $('#btn-intro').click(function() {
            window.location.href = "http://www.w3schools.com";
        })
    }
});