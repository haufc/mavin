$(document).ready(function() {
    $('#languageSelector').selectpicker();
     var language = $('#languageSelector').val();  
     var li = $('.dropdown-menu').find('ul').find('li');  
     if (language == 'VIE') { 
         $(li[1]).removeClass('active');           
         $(li[0]).addClass('active');
     } else {
         $(li[0]).removeClass('active');           
         $(li[1]).addClass('active');
     }
});
