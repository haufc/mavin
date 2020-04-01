<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
  <div class="content__title text--center">
    <h1 class="text--uppercase">${contentModel.title_s}</h1>
  </div>
  <div class="content__details container">
    <nav class="content__tab col-12">
      <div class="nav nav-tabs row mb-3" role="tablist">
          <#if (contentModel.tabitem_o.item)??>
            <#list contentModel.tabitem_o.item as element>
                <#if element.tabActive_b == true>
                    <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0 active" 
                        href="#${element.tabId_s}" 
                        role="tab" 
                        data-toggle="tab" 
                        aria-controls="${element.tabId_s}">${element.tabTitle_s}
                    </a>
                <#else>
                    <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" 
                        href="#${element.tabId_s}" 
                        role="tab" 
                        data-toggle="tab" 
                        aria-controls="${element.tabId_s}">${element.tabTitle_s}
                    </a>
                </#if>
            </#list>
         </#if>
        </div>
    </nav>
    <div class="tab-content">
      <#if (contentModel.tabitem_o.item)??>
        <#list contentModel.tabitem_o.item as element>
            <#if element.tabActive_b == true>
                <div class="tab-pane fade show active" id="${element.tabId_s}" role="tabpanel">
                     ${element.tabContent_html}
              <div class="carousel slide" id="projects" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="row">
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="${element.tabImage1_S}" alt="Content Image"/>
                        <p class="text--italic text-white">${element.tabdes1}</p>
                      </div>
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="${element.tabImage2_S}" alt="Content Image"/>
                        <p class="text--italic text-white">${element.tabdes2}</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="${element.tabImage3_S}" alt="Content Image"/>
                        <p class="text--italic text-white">${element.tabdes3}</p>
                      </div>
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="${element.tabImage4_S}" alt="Content Image"/>
                        <p class="text--italic text-white">${element.tabdes4}</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
                </div>
            <#else>
                <div class="tab-pane fade" id="${element.tabId_s}" role="tabpanel">
                     ${element.tabContent_html}
                </div>
            </#if>
        </#list>
      </#if>
    </div>
  </div>
<@studio.toolSupport />