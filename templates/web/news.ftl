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
        <div class="row">
                <#list news as aNews>
                <#if aNews.category = "mavinex-news">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                    <div>
                        <img src="${aNews.image}" alt="" class="img--full">
                        <h3 style="color: #fff; padding-top: 20px;"  style="padding-top:9px;">${aNews.title}</h3>
                        <span style="color: #fff; padding-top: 10px;" class="limit-text" max-length="50">${aNews.content}<span>
                    </div>
                </div>
                </#if>
                </#list>
        </div>
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
    <div class="content__details container">
        <div class="row">
                <#list news as aNews>
                <#if aNews.category = "field-news">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                    <div>
                        <img src="${aNews.image}" alt="" class="img--full">
                        <h3 style="color: #fff; padding-top: 20px;"  style="padding-top:9px;">${aNews.title}</h3>
                        <p style="color: #fff; padding-top: 10px;" class="limit-text">${aNews.content}<p>
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
      $(this).text(newstr).append("...");;
    });
</script>  

        
<@studio.toolSupport />