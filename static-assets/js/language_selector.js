$(document).ready(function() {
    $('#languageSelector').selectpicker();
    var url = window.location;
   console.log(url);
   var li = $('.dropdown-menu').find('ul').find('li');
    if (url.href.indexOf('/en') > -1) {
     
     $(li[1]).removeClass('active');           
        $(li[0]).addClass('active');
    } else {
        $(li[0]).removeClass('active');           
        $(li[1]).addClass('active');
    }
});
