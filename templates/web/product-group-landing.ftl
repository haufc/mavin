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
    <script src="/static-assets/js/script.js"></script>
    <script>
        $(document).ready(function(){
            var url = window.location.href;
            if (url.indexof('/en') > -1) {
                $('.tittle-vn').css('display', 'none');
                $('.title-en').css('display', 'block');
            }
        });
    </script>
  </body>
</html>
<@studio.toolSupport />