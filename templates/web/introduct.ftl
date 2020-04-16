<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
      <div class="content__title text--center">
        <h1 class="text--uppercase">${contentModel.title_s}</h1>
      </div>
      <div class="content__details container">
      </div>
</div>
<@studio.toolSupport />