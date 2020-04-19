<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Trang chủ</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content">
        <#list (contentModel.slide_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
    	<div class="mavinex-content">
            <div class="mavinex-content__container">
                <div class="mavinex-content__header">
                    <div class="mavinex-content__header-content">
                        <h1 style="color:red;">${contentModel.title_s}</h1>
                    </div>
                </div>

                <div class="mavinex-content__body">
                    <div class="mavinex-content__body-content row">
                        <div class="mavinex-content__text col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <p>Hình thức tuyển dụng: ${contentModel.type_s}</p>
                            <#list (contentModel.item_o.item)![] as element>
                                <p>${element.title_s}</p>
                                <p>${element.content_t}</p>
                            </#list>
                        </div>

                        <div class="mavinex-content__img col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <img src="${contentModel.image_s}" alt="Content Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel234/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
  </body>
</html>
<@studio.toolSupport />