<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <div class="content__item" id="expertise" <@studio.iceAttr component=contentModel/>>
     <div class="content__title">
                <div class="container">
                        <div class="content__title">
                          <#if (contentModel.title_s)??>
                          <h2 class="text--red">${contentModel.title_s}</h2>
                          </#if>
                        </div>
                </div>
        </div>
    <div class="content__details container" style="flex-flow: wrap-reverse; padding-left: 15px;">
        <div class="row">
            <#list contentModel.contentitem_o.item as content>
                <@renderComponent component=content />
            </#list>
        </div>
    </div>
  </div>
<@studio.toolSupport />