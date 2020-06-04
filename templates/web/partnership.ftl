<#import "/templates/system/common/cstudio-support.ftl" as studio />
	 <div class="content__details">
          <div class="container" style="background-color: #FFF; padding: 20px;">
            <div class="row">
                <#list contentModel.logo_o.item as logo>
                    <div class="col-3" style="background-image: url('${logo.partnerimage_s}'); height: 190px;width: 230px;background-repeat: no-repeat;background-size: contain;">
                          <!--<div style="background-image: url('${logo.partnerimage_s}'); height:100%; width:100%;">
                          <img style="border: 4px solid blue;padding: 15%;" class="img--full" src="${logo.partnerimage_s}" alt="${logo.partnerimagealt_s}"/>
                        </div>-->
                    </div>
                </#list>
            </div>
          </div>
      </div>
<@studio.toolSupport />