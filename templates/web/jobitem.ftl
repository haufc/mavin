<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="recruitment">
        <div class="content__title text--center">
            <h1 class="text--uppercase">${contentModel.title_s}</h1>
          </div>
        <div class="container-fluid p-3 text-white">         
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <p style="font-size: 16px;">
                        <#list contentModel.item_o.item as element>
                        	<strong>${element.title_s}</strong>
                        	<br>
                        	<p>
                        	    ${element.content_t}
                        	</p>
                        </#list>
                    </p>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <img src="${contentModel.image_s}" class="img--full" alt="">
                </div>
            </div>
        </div>
      </div>  
<@studio.toolSupport />