 $(document).ready(function(){
    var url = window.location.href;
    
    if ( url.indexOf('/en') > -1) {
        $('.span-view-more').text('View more');
        $('#btn-intro').attr('href', '/en/introduction');
        
        $('#product-title-en').css('display','block');
        $('#product-title-vie').css('display','none');
    }
});