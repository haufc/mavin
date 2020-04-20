<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <div class="content__item" id="expertise" <@studio.iceAttr component=contentModel/>>
    <div class="content__title text--center">
      <h3 class="text--uppercase text--red">${contentModel.title_s}</h3>
    </div>
    <div class="content__details row" style="flex-flow: wrap-reverse;">
        <#list contentModel.contentitem_o.item as content>
            <@renderComponent component=content />
        </#list>
    </div>
  </div>
<@studio.toolSupport />