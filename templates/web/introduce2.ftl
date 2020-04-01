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
                     <h3 class="text--uppercase text-white mb-3">MỘT SỐ DỰ ÁN TIÊU BIỂU MAVINEX ĐÃ THỰC HIỆN </h3>
              <div class="carousel slide" id="projects" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="row">
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="../../assets/images/content_img_6.png" alt="Content Image"/>
                        <p class="text--italic text-white">Dự án Nhà máy thức ăn chăn nuôi Mavin Austfeed Nghệ An</p>
                      </div>
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="../../assets/images/content_img_7.png" alt="Content Image"/>
                        <p class="text--italic text-white">Dự án Nhà máy thức ăn chăn nuôi Mavin Austfeed Đồng Tháp</p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="../../assets/images/content_img_8.png" alt="Content Image"/>
                        <p class="text--italic text-white">Dự án Nhà máy thủy sản Mavin</p>
                      </div>
                      <div class="content__img text--center col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="../../assets/images/content_img_9.png" alt="Content Image"/>
                        <p class="text--italic text-white">Trại heo Nhơn Tân - Bình Định</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="carousel-controllers"><a class="carousel-control-prev" href="#projects" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a>
                  <ol class="carousel-indicators">
                    <li class="active" data-target="projects" data-slide-to="0">1</li>
                    <li data-target="projects" data-slide-to="0">2</li>
                    <li data-target="projects" data-slide-to="0">3</li>
                  </ol><a class="carousel-control-next" href="#projects" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a>
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