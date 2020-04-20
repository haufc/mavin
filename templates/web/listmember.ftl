<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="mavinex-logos container" <@studio.iceAttr component=contentModel/>>
            <div class="owl-carousel owl-theme">
                <#list contentModel.member_o.item as element>
                    <div class="item"><img src="${element.logo_s}" alt="Logo"></div>
                </#list>
            </div>
        </div>
<@studio.toolSupport />