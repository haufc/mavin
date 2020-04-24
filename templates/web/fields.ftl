<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
            <div class="container">
                <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                          <h1 class="text--red text--uppercase">${contentModel.itemTitle_s}</h1>
                        </div>
                </div>
            </div>
    </div>
    <div class="content__details container">
            <div class="row">
                ${contentModel.itemContent_html}
            </div>
            <div class="row">
            <i class="fas fa-play text--red"></i><p class="text-white" style="padding-left:10px; font-size:14px;">${contentModel.groupTitle_s}</p>
            </div>
            <ol>
            <#list contentModel.group_o.item as group>
                <li><p class="text-white" style="font-size:14px;">${group.groupContent_s}</p></li>    
            </#list>
            </ol>
            <div class="row" <@studio.componentContainerAttr target="carousels" objectId=contentModel.objectId/>>
                <#if contentModel.carousels_o?? && contentModel.carousels_o.item??>
                    <div style="color: #fff;">
                    <#list contentModel.carousels_o.item as carousel>
                            <@renderComponent component=carousel />
                    </#list>
                    </div>
                </#if>
            </div>
    </div>
</div>
    
        
<@studio.toolSupport />