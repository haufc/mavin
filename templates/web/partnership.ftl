<#import "/templates/system/common/cstudio-support.ftl" as studio />
	 <div class="content__details">
          <div class="container" style="background-color: #FFF; padding: 20px; padding-bottom:0px;">
            <div class="row">
                <#list contentModel.logo_o.item as logo>
                    <div class="col-3">
                         <div style=" height:230px; width:230px; padding-bottom:20px;">
                          <img style="border: 4px solid blue;padding: 15%;" class="img--full" src="${logo.partnerimage_s}" alt="${logo.partnerimagealt_s}"/>
                        </div>
                    </div>
                </#list>
            </div>
          </div>
      </div>
<@studio.toolSupport />