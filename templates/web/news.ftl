<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                  <h1 class="text--red text--uppercase">Tin Mavinex</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="content__details container">
        <div class="row data-container" id="mavinex-news">
                <#list news as aNews>
              
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 mavinex" style="padding-left: 0px;">
                    <div>
                        <img src="${aNews.image}" alt="" class="img--full">
                        <h3 style="color: #fff; padding-top: 20px;"  style="padding-top:9px;">${aNews.title}</h3>
                        <p style="color: #fff; padding-top: 10px;" class="limit-text" max-length="50">${aNews.content}<p>
                        <a class="mt-3 rounded-0" href="#"> 
                            <span class="mr-1 text--italic" style="color:#fff">Xem tiếp</span>
                            <i class="fa fa-play text--red"></i>
                        </a>
                    </div>
                </div>
                
                </#list>
        </div>
        <nav aria-label="Page navigation example">
          <ul class="pagination">
            <li id="previous-page" class="page-item"><a class="page-link" href="javacript:void(0)">Previous</a></li>
          </ul>
    </nav>
    </div>
    <div class="content__title">
            <div class="container">
                <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                          <h1 class="text--red text--uppercase">Tin ngành</h1>
                        </div>
                </div>
            </div>
    </div>
    <nav aria-label="field-news navigation">
          <ul class="pagination2">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
          </ul>
    </nav>
    <div class="content__details container">
        <div class="row">
                <#list news as aNews>
                <#if aNews.category = "field-news">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                    <div>
                        <img src="${aNews.image}" alt="" class="img--full">
                        <h3 style="color: #fff; padding-top: 20px;"  style="padding-top:9px;">${aNews.title}</h3>
                        <p style="color: #fff; padding-top: 10px;" class="limit-text">${aNews.content}<p>
                        <a class="mt-3 rounded-0" href="#"> 
                            <span class="mr-1 text--italic" style="color:#fff">Xem tiếp</span>
                            <i class="fa fa-play text--red"></i>
                        </a>
                    </div>
                </div>
                </#if>
                </#list>
                
        </div>
    </div>

</div>
<script>
    $('.limit-text').each(function (f) {
      var newstr = $(this).text().substring(0,300);
      $(this).text(newstr).append("...");
    });
    
    var numberOfMavinexNews = $("#mavinex-news .mavinex").length;
    var limitPerPage = 2;
    $("#mavinex-news .mavinex:gt(" + (limitPerPage -1 )+")").hide();
    var totalPages = Math.round(numberOfMavinexNews / limitPerPage );
    $('.pagination').append("<li class='page-item current-page active'><a class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
    
    for (let i=2; i<= totalPages;i++){
        $(".pagination").append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ i +"</a></li>");
    }
    
    $('.pagination').append("<li id='next-page' class='page-item'><a class='page-link' href='javascript:void(0)'>Next</a></li>");
    
    $('.pagination li.current-page').on("click", function(){
        if($(this).hasClass("active")){
            return false;
        } else{
            var currentPage = $(this).index();
            $('.pagination li').removeClass("active");
            $(this).addClass("active");
            $("#mavinex-news .mavinex").hide();
            var total = limitPerPage * currentPage;
            for(let i = total - limitPerPage; i<total; i++){
                $("#mavinex-news .mavinex:eq("+ i +")").show();
            }
        }
    });
    
    $("#next-page").on("click", function() {
      var currentPage = $(".pagination li.active").index(); 
      if (currentPage === totalPages) {
        return false; 
      } else {
        currentPage++; 
        alert(currentPage);
        $(".pagination li").removeClass('active'); 
        $("#mavinex-news .mavinex").hide();
        var total = limitPerPage * currentPage; 
        for (let i = total - limitPerPage; i < total; i++) {
          $("#mavinex-news .mavinex:eq(" + i + ")").show(); 
        }
    
        $(".pagination li.current-page:eq(" + (currentPage -1) + ")").addClass('active'); 
      }
    });


    $("#previous-page").on("click", function() {
          var currentPage = $(".pagination li.active").index(); 
          if (currentPage === 1) {
            return false; 
          } else {
            currentPage--; 
            $(".pagination li").removeClass('active'); 
            $("#mavinex-news .mavinex").hide();
            var grandTotal = limitPerPage * currentPage; 
            for (var i = grandTotal - limitPerPage; i < grandTotal; i++) {
              $("#mavinex-news .mavinex:eq(" + i + ")").show();
            }
            $(".pagination li.current-page:eq(" + (currentPage - 1) + ")").addClass('active'); 
          }
        });
</script>  
<@studio.toolSupport />