<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content" <@studio.iceAttr component=contentModel/>>
        <div class="content__title">
                <div class="container">
                        <div class="content__title text--center">
                          <#if (contentModel.title_s)??>
                          <h2 class="text--uppercase text--red">${contentModel.title_s}</h2>
                          </#if>
                        </div>
                </div>
        </div>
        <div class="content__details container">
            <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <#if (contentModel.item_o.item)??>
                                <#list contentModel.item_o.item as element>
                                    <div class="row">
                                         <i class="fa fa-play col-lg-1 col-md-1 col-sm-1"></i> 
                                         <p class="col-lg col-md col-sm" style="font-size:14pt;">${element.content_t}<p>
                                    </div>
                                </#list>
                        </#if>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <#if (contentModel.image_s)?? >
                        <img src="${contentModel.image_s}" alt="Lĩnh vực hoạt động" width="100%">
                        </#if>
                    </div>
            </div>
        </div>
<@studio.toolSupport />