<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content__title">
        <div class="container">
            <div>
              <h1 class="text--uppercase">${contentModel.title_s}</h1>
            </div>
        </div>
      </div>
    <div class="content__details container">
        <div class="row">
            <#list contentModel.product_o.item as element>
                <div class="col-lg-6 col-md-6 col-sm-6 col-6 mb-5">
                    <div class="card" style="width: 100%; border: none; border-radius: unset;">
                      <img class="card-img-top" src="${element.avatar_s}" height="350px" alt="Card image cap">
                      <#if element.colortext_s == '1'>
                        	<div class="card-body text-white" style="background-color: #CE181F;">

                                <h4 class="card-text">${element.title_s}</h4>
                            </div>
                    	<#else>
                    	    <div class="card-body text-white" style="background-color: #00559A;">
                                <h4 class="card-text">${element.title_s}</h4>
                            </div>
                     </#if>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</script>
<@studio.toolSupport />