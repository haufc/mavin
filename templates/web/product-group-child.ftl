<#import "/templates/system/common/cstudio-support.ftl" as studio />
      <div class="content__details container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-6 mb-5">
                <div class="card" style="width: 100%; border: none; border-radius: unset;">
                  <img class="card-img-top" src="${contentModel.productchildavatar_s}" alt="Card image cap">
                  <div class="card-body text-white" style="background-color: #CE181F;     position: absolute;top: 280px;">
                    <p class="card-text">${contentModel.productchildtitle_s}</p>
                  </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-6 mb-5" >
                <#if products??>
                	<#list products as product>
                    	<a class="text-white" style="font-size: 16px;" href="${product.url}">${product.title}</a>
                    </#list>
                </#if>
                <br>
                <a class="mt-3 rounded-0 text-white" style="text-direction: none;" href="/gioi-thieu"> 
                    <span class="mr-1">Xem tiếp</span>
                    <i class="fas fa-play text--red"></i>
                </a>
            </div>
          </div>
      </div>
<@studio.toolSupport />