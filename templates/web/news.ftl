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
        <#list news as aNews>
        <#if aNews.category = "Tin Mavinex">
        <div class="row">
            ${aNews.title}
        </div>
        <div class="row">
        <i class="fas fa-play text--red" style="padding-top: 5px;"></i>
        <p class="text-white" style="padding-left:10px; font-size:14pt; font-weight:bold;">${aNews.content}</p>
        </div>
        <div class="row">
        <i class="fas fa-play text--red" style="padding-top: 5px;"></i>
        <img style=" padding-top:20px; " class="image-center img-responsive" src="${aNews.image!""}" >
        </div>
        </#if>
        </#list>
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
            <#list news as aNews>
            <#if aNews.category = "Tin ngành">
            <div class="row">
                ${aNews.title}
            </div>
            <div class="row">
            <i class="fas fa-play text--red" style="padding-top: 5px;"></i>
            <p class="text-white" style="padding-left:10px; font-size:14pt; font-weight:bold;">${aNews.content}</p>
            </div>
            <div class="row">
            <i class="fas fa-play text--red" style="padding-top: 5px;"></i>
            <img style=" padding-top:20px; " class="image-center img-responsive" src="${aNews.image!""}" >
            </div>
            </#if>
            </#list>
    </div>
</div>
    
        
<@studio.toolSupport />