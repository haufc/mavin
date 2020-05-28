<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12" style="padding-left: 0px;">
                  <h1 class="text--red text--uppercase">Tin Mavinex</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="content__details container">
        <div class="container-fluid">
        <div class="row">
                <#list news as aNews>
                <#if aNews.category = "mavinex-news">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                    <div>
                        <img src="${aNews.image}" alt="Slide Image" class="img--full">

                        <p class="text--italic text--white" style="padding-top:9px;">${aNews.title}</p>
                        ${aNews.content}
                    </div>
                </div>
                </#if>
                </#list>
        </div>
        </div>
    </div>
    <div class="content__title">
            <div class="container">
                <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12" style="padding-left: 0px;">
                          <h1 class="text--red text--uppercase">Tin ngành</h1>
                        </div>
                </div>
            </div>
    </div>
    <div class="content__details container">
        <div class="container-fluid">
        <div class="row">
                <#list news as aNews>
                <#if aNews.category = "mavinex-news">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                    <div>
                        <img src="${aNews.image}" alt="Slide Image" class="img--full">

                        <p class="text--italic text--white" style="padding-top:9px;">${aNews.title}</p>
                        ${aNews.content}
                    </div>
                </div>
                </#if>
                </#list>
        </div>
        </div>
    </div>
</div>
    
        
<@studio.toolSupport />