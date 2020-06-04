<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <div class="content__item" id="expertise" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
      <h1 class="text--red">${contentModel.title_s}</h1>
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