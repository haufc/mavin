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
                <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" 
                    href="#${element.tabId_s}" 
                    role="tab" 
                    data-toggle="tab" 
                    aria-controls="${element.tabId_s}">${element.tabTitle_s}
                </a>
            </#list>
         </#if>
        </div>
    </nav>
    <div class="tab-content">
      <#if (contentModel.tabitem_o.item)??>
        <#list contentModel.tabitem_o.item as element>
            <div class="tab-pane fade show active" id="${element.tabId_s}" role="tabpanel">
                <div class="col-12">
                     ${element.tabContent_html}
                </div>
            </div>
        </#list>
      </#if>
    </div>
  </div>
<@studio.toolSupport />