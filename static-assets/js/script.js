$(document).ready(function() {
    $('.search-result').css("display", "none");
    var url = window.location;
    
    // set active to nav
    $('#nav-content a').filter(function() {
        return this.href == url;
    }).css('font-weight', 'bold');
    
    var lstPageURL = ["/linh-vuc-xay-dung","/tu-van-tong-the","/all-jobs","/jobs"];
    
    if(url.href.indexOf('san-pham') > -1) {
        $('.content').css('background', 'white');
    }
    
    if (url.href.indexOf(lstPageURL[0]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/nang-luc-kinh-nghiem";
        }).css('font-weight', 'bold');
    }
    
     if (url.href.indexOf(lstPageURL[1]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/nang-luc-kinh-nghiem";
        }).css('font-weight', 'bold');
    }
    
    if (url.href.indexOf(lstPageURL[2]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/co-hoi-nghe-nghiep";
        }).css('font-weight', 'bold');
    }
    
    if (url.href.indexOf(lstPageURL[3]) > -1) {
        $('#nav-content a').filter(function() {
            return this.href == getContextPath()+"/co-hoi-nghe-nghiep";
        }).css('font-weight', 'bold');
    }
    
    
    let dateVal = $('.date-formater').text();
    $('.date-formater').text(formatDate(dateVal));
    
    // // define display job content item
    // var jobContent = $(".job-info__item").text();
    // console.log(jobContent);
    
    // var lstJobContent = jobContent.split('-').join('/').split('*').join('/').split('·').join('/').split('/') ;

    
    // Display content for search page
    if(url == getContextPath()+ "/search-result") {
        
        var $pagination = $('#pagination'), 
            totalRecords = 0,
            records = [],
            displayRecords = [],
            recPerPage = 10,
            page = 1,
            totalPages = 0;
            
        var storedLstSearch = JSON.parse(localStorage.getItem("mergeLst"));
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
       
        for (let i = 0; i < lent.length; i++) {
             var txtDesc = $(lent[i]).html();
             console.log(txtDesc);
            if(txtDesc.length > 150) {
               let txt = txtDesc.substr(0, 150);
               $(lent[i]).html(txt)
            }
        }
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
    let userTerm = $('#txtSearch').val();
    if (userTerm === "") {
        alert("Bạn cần nhập từ khóa tìm kiếm!");
        $('#txtSearch').focus();
    }
    else {
        var urlService = this.getContextPath() + "/api/search.json?q="+ userTerm
        localStorage.setItem("userTerm", userTerm);
        $.ajax({
            type: "GET",
            url:urlService,
            success: function(resp){
                localStorage.setItem("mergeLst", JSON.stringify(resp[0].concat(resp[1]).concat(resp[2]).concat(resp[3])));
                
                window.location.replace(getContextPath()+ "/search-result");
            }
        });
        
        $('.nav-bar__search').css("display", "none");
    }
}

