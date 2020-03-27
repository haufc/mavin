<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
  <div class="content__title text--center">
    <h1 class="text--uppercase">${contentModel.title_s}</h1>
  </div>
  <div class="content__details container">
    <nav class="content__tab col-12">
      <div class="nav nav-tabs row mb-3" role="tablist">
          <!--<a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0 active" href="#mailContent" role="tab" data-toggle="tab" aria-controls="mailContent">Thư ngỏ</a>
          <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" href="#historyContent" role="tab" data-toggle="tab" aria-controls="historyContent">Lịch sử hình thành</a>
          <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" href="#organizationContent" role="tab" data-toggle="tab" aria-controls="organizationContent">Cơ cấu tổ chức</a>
          <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" href="#partnerContent" role="tab" data-toggle="tab" aria-controls="partnerContent">Đối tác chiến lược</a>
          <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" href="#partnerContent" role="tab" data-toggle="tab" aria-controls="partnerContent">Đối tác chiến lược</a>
          <a class="content__tab-link text--uppercase text--center nav-item nav-link col rounded-0" href="#partnerContent" role="tab" data-toggle="tab" aria-controls="partnerContent">Đối tác chiến lược</a> -->
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
      <!--<div class="tab-pane fade show active" id="mailContent" role="tabpanel"><img class="img--full" src="../../assets/images/mail.png" alt="Mail"/></div>
      <div class="tab-pane fade" id="historyContent" role="tabpanel"><img class="img--full" src="../../assets/images/history.png" alt="History"/></div>
      <div class="tab-pane fade" id="organizationContent" role="tabpanel"><img class="img--full" src="../../assets/images/organization.png" alt="Organization"/></div>
      <div class="tab-pane fade" id="partnerContent" role="tabpanel"><img class="img--full" src="../../assets/images/partner_2.png" alt="Partner"/></div>
      -->
      <#if (contentModel.tabitem_o.item)??>
        <#list contentModel.tabitem_o.item as element>
            <div class="tab-pane fade show active" id="${element.tabId_s}" role="tabpanel">
                 ${element.tabContent_html}
            </div>
        </#list>
      </#if>
    </div>
  </div>
<@studio.toolSupport />