<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <div class="container" style="background-color: #FFF; padding: 20px;>
    <div class="row">
        <#list contentModel.logo_o.item as logo>
            <div class="col-3">
                 <div style="padding-bottom:20px;">
                  <img class="partnership-img" style="border: 4px solid blue; padding:15%;" width="230" height="230" src="${logo.partnerimage_s}" alt="${logo.partnerimagealt_s}"/>
                </div>
            </div>
        </#list>
    </div>
  </div>
<@studio.toolSupport />