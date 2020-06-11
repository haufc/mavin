<#import "/templates/system/common/cstudio-support.ftl" as studio />
      <!-- Handlebar Templates -->
      <script id="search-results-template" type="text/x-handlebars-template">
    		{{#each results}}
    		   <span>{{item}}</span>
    		{{else}}
    		    <p>No results found</p>
    		{{/each}}
    		
     </script>
      <div class="content__details container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-5">
                <div class="card" style="width: 100%; border: none; border-radius: unset;">
                  <img class="card-img-top" src="${contentModel.productchildavatar_s}" alt="Card image cap">
                  <div class="card-body text-white" style="background-color: #CE181F;position: absolute;top: 78%;; width: 100%;">
                    <p class="card-text text--uppercase product-child-vn" style="font-weight: bold;">${contentModel.productchildtitle_s}</p>
                    <p class="card-text text--uppercase product-child-en" style="font-weight: bold;">${contentModel.productchildtitleEnglish_s}</p>
                  </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-5" >
                <div id="paginate">
                    
                </div>
                <#if productVNs??>
                    <div class="paginate">
                        <div class="list-product-vn items">
                            <#list productVNs as productVN>
                            	<a class="text-white" style="font-size: 16px;" href="${productVN.url}">${productVN.title}</a>
                            	<br>
                            </#list>
                        </div>
                    </div>
                </#if>
                 <#if productENs??>
                    <div class="paginate">
                        <div class="list-product-en items">
                            <#list productENs as productEN>
                            	<a class="text-white" style="font-size: 16px;" href="${productEN.url}">${productEN.titleEN}</a>
                            	<br>
                            </#list>
                        </div>
                    </div>
                </#if>
                
                <br>
                <a class="mt-3 rounded-0 text-white" style="text-direction: none;" href="/#"> 
                    <span class="mr-1 btn-view-more">Xem tiếp</span>
                    <i class="fas fa-play text--red"></i>
                </a>
               
            </div>
          </div>
      </div>
<@studio.toolSupport />