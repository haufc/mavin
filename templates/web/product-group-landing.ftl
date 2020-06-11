<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
    <link rel="stylesheet" href="/static-assets/css/mavinex.css"/>
    <title>${contentModel.product_title_s}</title>
    <style>
        .current {
          color: green;
        }
        
        #pagin li {
          display: inline-block;
        }
        
        .prev {
          cursor: pointer;
        }
        
        .next {
          cursor: pointer;
        }
        
        .last{
          cursor:pointer;
          margin-left:5px;
        }
        
        .first{
          cursor:pointer;
          margin-right:5px;
        }
    </style>
  </head>
  <body>
    <button onclick="topFunction()" id="btn-up-top" ><i class="fa fa-angle-up"></i></button>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content" >
        <@renderComponent component=contentModel.slide_o.item />
         <div class="recruitment ">
        <div class="content__title text--center ">
            <h1 class="text--uppercase text--red text-left container tittle-vn">${contentModel.product_title_s}</h1>
            <h1 class="text--uppercase text--red text-left container title-en">${contentModel.productGrouptitleEnglish_s}</h1>
        </div>
        <div class="container p-3">         
            <div class="row">
            <#if (contentModel.section_o.item)?? && contentModel.section_o??>
                <#list (contentModel.section_o.item)![] as section>
                    <@renderComponent parent=contentModel component=section />
                </#list>
            </#if>
            </div>
        </div>
    </div>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <input hidden value="${contentModel.productGroup_o.item.key}" id="txt-key"/>
    <div class="lst-parent">
        <#list groupProduct.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel234/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/handlebars.min-latest.js"></script>
    <script src="/static-assets/js/jquery.twbsPagination.min.js"></script>
    <script src"/static-assets/plugins/panigation/paginga.jquery.js"></script>
    <script src="/static-assets/js/script.js"></script>
    <script>
        $(document).ready(function(){
            var title= $('')
            var url = window.location.href;
            if (url.indexOf('/en') > -1) {
                $('.tittle-vn').css('display', 'none');
                $('.title-en').css('display', 'block');
                $('.product-child-vn').css('display', 'none');
                $('.product-child-en').css('display', 'block');
                $('title').text( $('.title-en').text());
                $('.list-product-vn').css('display', 'none');
                $('.btn-view-more').text('View more');
                $('.footer-phone').text('Phone: ');
                $('.footer-tax').text('Tax: ');
                $('.footer-issued-date').text('Date of license: ');
                $('.footer-item__social--title').text('Contact us');
                $('.headquarter').text('Headquarter: ');
                $('.footer-issued-by').text('Issued by: ');
            } else {
                $('.tittle-vn').css('display', 'block');
                $('.title-en').css('display', 'none');
                $('.product-child-vn').css('display', 'block');
                $('.product-child-en').css('display', 'none');
                $('title').text( $('.title-vn').text());
                $('.list-product-en').css('display', 'none');
            }
        });
        
        //Pagination
        pageSize = 4;
        incremSlide = 5;
        startPage = 0;
        numberPage = 0;
        
        var pageCount =  $(".line-content").length / pageSize;
        var totalSlidepPage = Math.floor(pageCount / incremSlide);
            
        for(var i = 0 ; i<pageCount;i++){
            $("#pagin").append('<li><a href="#">'+(i+1)+'</a></li> ');
            if(i>pageSize){
               $("#pagin li").eq(i).hide();
            }
        }
        
        var prev = $("<li/>").addClass("prev").html("Prev").click(function(){
           startPage-=5;
           incremSlide-=5;
           numberPage--;
           slide();
        });
        
        prev.hide();
        
        var next = $("<li/>").addClass("next").html("Next").click(function(){
           startPage+=5;
           incremSlide+=5;
           numberPage++;
           slide();
        });
        
        $("#pagin").prepend(prev).append(next);
        
        $("#pagin li").first().find("a").addClass("current");
        
        slide = function(sens){
           $("#pagin li").hide();
           
           for(t=startPage;t<incremSlide;t++){
             $("#pagin li").eq(t+1).show();
           }
           if(startPage == 0){
             next.show();
             prev.hide();
           }else if(numberPage == totalSlidepPage ){
             next.hide();
             prev.show();
           }else{
             next.show();
             prev.show();
           }
           
            
        }
        
        showPage = function(page) {
        	  $(".line-content").hide();
        	  $(".line-content").each(function(n) {
        	      if (n >= pageSize * (page - 1) && n < pageSize * page)
        	          $(this).show();
        	  });        
        }
            
        showPage(1);
        $("#pagin li a").eq(0).addClass("current");
        
        $("#pagin li a").click(function() {
        	 $("#pagin li a").removeClass("current");
        	 $(this).addClass("current");
        	 showPage(parseInt($(this).text()));
        });
      
    </script>
  </body>
</html>
<@studio.toolSupport />