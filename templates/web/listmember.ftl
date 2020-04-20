<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content__logo-list" <@studio.iceAttr component=contentModel/>>
            <div class="owl-carousel owl-theme">
                <#list contentModel.member_o.item as element>
                    <div class="item"><img src="${element.logo_s}" alt="${element.imagealt_s}"></div>
                </#list>
            </div>
        </div>
<@studio.toolSupport />