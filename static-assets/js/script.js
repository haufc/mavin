// function myFunction(elementID) {
//     console.log('hautk');
//     var selector = '#' + elementID;
//     var element = $('#navLinks').find(selector);
//     console.log(element);
//     $(element).addClass('active');
// }
$(document).ready(function() {
    var url = window.location;
    $('#navLinks a').filter(function() {
        return this.href == url;
    }).addClass('active');
    
    function search() {
        console.log('demo');
        $('.content').css("display", "none");
        console.log($('#txtSearch').val());
    }
});

