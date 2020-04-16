<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="mavinex-content" <@studio.iceAttr component=contentModel/>>
    <div class="mavinex-content__container">
        <div class="mavinex-content__header">
            <div class="mavinex-content__header-content">
                <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <h1>${contentModel.itemTitle_s}</h1></div>
            </div>
        </div>

        <div class="mavinex-content__body">
            <div class="mavinex-content__body-content container">
                ${contentModel.itemContent_html}
                <div>
                    <#list (contentModel.carousels_o.item)![] as carousel>
                        <@renderComponent parent=contentModel component=carosel />
                    </#list>
                </div>
            </div>
        </div>
    </div>
</div>
<@studio.toolSupport />