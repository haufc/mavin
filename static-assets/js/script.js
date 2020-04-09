// function myFunction(elementID) {
//     console.log('hautk');
//     var selector = '#' + elementID;
//     var element = $('#navLinks').find(selector);
//     console.log(element);
//     $(element).addClass('active');
// }
$(document).ready(function() {
    $('.search-result').css("display", "none");
    var url = window.location;
    $('#navLinks a').filter(function() {
        return this.href == url;
    }).addClass('active');
});

function search() {
        console.log('demo');
        $('.content__item').css("display", "none");
        $(document).scrollTo('.search-result');
        let userTerm = $('#txtSearch').val()
        console.log(userTerm);
        var urlService = "http://localhost:8080/api/search.json?q="+ userTerm
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                console.log(resp);
                let total = resp[0].length + resp[1].length;
                $('.search-result').css("display", "block");
                $('#total-search').text(total);
                $('#term-search').text(userTerm);
            }
        });
    $('.nav-bar__search').css("display", "none");
}
