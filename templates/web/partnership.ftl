<#import "/templates/system/common/cstudio-support.ftl" as studio />
	 <div class="content__details">
          <div class="container" style="background-color: #FFF; padding: 20px;">
            <div class="row">
                <#list contentModel.VARIABLENAME.item as myItem>
                    <div class="col-3">
                        <img style="border: 4px solid blue;" class="img--full" src="../../assets/images/content_img_2.png"/>
                    </div>
                </#list>
            </div>
          </div>
      </div>
<@studio.toolSupport />