$(document).ready(function() {
    $('.search-result').css("display", "none");
    var url = window.location;
    
    $('#navLinks a').filter(function() {
        return this.href == url;
    }).addClass('active');
    
    let dateVal = $('.date-formater').text();
    $('.date-formater').text(formatDate(dateVal));

    // Display content for search page
    if(url == getContextPath()+ "/search-result") {
        
        var $pagination = $('#pagination'), 
            totalRecords = 0,
            records = [],
            displayRecords = [],
            recPerPage = 10,
            page = 1,
            totalPages = 0;
            
        var storedLstSearch = JSON.parse(localStorage.getItem("listSearch"));
        records = storedLstSearch;
        totalRecords = records.length;
        totalPages = Math.ceil(totalRecords / recPerPage);
        apply_pagination();
        
        // var source = $("#search-results-template").html();
        // var template = Handlebars.compile(source);
        // var context = { results: storedLstSearch };
        // var html = template(context);
        
        // $('.search-result_item').html(html);
        $('#totalSearch').text(totalRecords);
        $('#keywordSearch').text(localStorage.getItem("userTerm"))
        $('.content').css("background-color", "#FFF")
        // --- limit desc search --
        var lent = $(".limit-text-250");
        console.log("aaaaaaaaa",lent);
        // if (lent.length > 100) {
        //   short_text = lent.substr(0, 100);
        //   $(".limit-text-250").html(short_text);
        // }
        
        $(".limit-text-250 em").css("font-weight", "bold");
    }
    
    function apply_pagination() {
          $pagination.twbsPagination({
                totalPages: totalPages,
                visiblePages: 6,
                onPageClick: function (event, page) {
                      displayRecordsIndex = Math.max(page - 1, 0) * recPerPage;
                      endRec = (displayRecordsIndex) + recPerPage;
                     
                      displayRecords = records.slice(displayRecordsIndex, endRec);
                      generateContent();
                }
          });
    }
    
    // generate content search result
    function generateContent() {
         var source = $("#search-results-template").html();
         var template = Handlebars.compile(source);
         var context = { results: displayRecords };
         var html = template(context);
        
        $('.search-result_item').html(html);
    }
});

function formatDate(value) {
    var date = new Date(value);
    return (
      (date.getMonth() > 8) 
      ? (date.getMonth() + 1) 
      : ('0' + (date.getMonth() + 1))) + '/' + ((date.getDate() > 9) 
        ? date.getDate() 
        : ('0' + date.getDate())) + '/' + date.getFullYear();
}

function getContextPath() {
   return  window.location.protocol + "//" + window.location.host
}

// function search() {
//         console.log('demo');
//         $('.content__item').css("display", "none");
//         $(window).scrollTop($('.search-result').offset().top);
//         let userTerm = $('#txtSearch').val()
//         console.log(userTerm);
//         var urlService = this.getContextPath() + "/api/search.json?q="+ userTerm
//         $.ajax({
//             type: "GET",
//             url:urlService,
//             success: function(resp){
//                 console.log(resp);
//                 //let total = resp[0].length + resp[1].length;
//                 let total = resp[0].length;
//                 $('.search-result').css("display", "block");
//                 $('#total-search').text(total);
//                 $('#term-search').text(userTerm);
                
//                 var source = $("#search-results-template").html();
//                 var template = Handlebars.compile(source);
//                 var context = { results: resp[0] };
                
//                 localStorage.setItem("listSearch", resp[0]);
//                 var html = template(context);
                
//                 $('.search-result__list').html(html);
                
//                 // --- limit desc search --
//                 var lent = $(".limit-text-250").html().length;
//                 if (lent > 200) {
//                   short_text = $(".limit-text-250").html().substr(0, 200);
//                   $(".limit-text-250").html(short_text + "...");
//                 }
                
//                 // --- style for em--
//                 $(".limit-text-250 em").css("font-weight","bold");
//             }
//         });
//     $('.nav-bar__search').css("display", "none");
// }

function search() {
        console.log('demo');
       // $('.content__item').css("display", "none");
       // $(window).scrollTop($('.search-result').offset().top);
        let userTerm = $('#txtSearch').val()
        var urlService = this.getContextPath() + "/api/search.json?q="+ userTerm
        localStorage.setItem("userTerm", userTerm);
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                localStorage.setItem("listSearch", JSON.stringify(resp[0]));
                window.location.replace(getContextPath()+ "/search-result");
            }
        });
    $('.nav-bar__search').css("display", "none");
}

