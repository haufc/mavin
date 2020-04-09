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
});

function search() {
        console.log('demo');
        $('.content').css("display", "none");
        let userTerm = $('#txtSearch').val()
        console.log(userTerm);
        var urlService = "http://localhost:8080/api/search.json?q="+ userTerm
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                console.log(resp);
            }
        });
    }
