<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <#if contentModel.isVerticalContent_b == false>
    	<!-- Giới thiệu -->
         <div class="content__item" id="about" <@studio.iceAttr component=contentModel/>>
            <div class="content__title text--center">
              <h1 class="text--uppercase">${contentModel.title_s}</h1>
            </div>
            <div class="content__details row">
              <div class="content__img col-sm-12 col-md-6 col-lg-6">
                <img class="img--full" src="${contentModel.image_s}" alt="Content Image"/>
              </div>
              <div class="content__text col-sm-12 col-md-6 col-lg-6">
                <#if (contentModel.item_o.item)??>
                    <#list contentModel.item_o.item as element>
                        <p>${element.content_t}<p>
                    </#list>
                </#if>
                <a href="/introduct" class="content__btn btn rounded-0"> <span class="text-white mr-3">Xem thêm</span><i class="fas fa-arrow-right"></i></a>
              </div>
            </div>
          </div>
        <!-- =============== -->
    <#else>
        <!-- Năng lực kinh nghiệm -->
        <div class="content__item" id="activity" <@studio.iceAttr component=contentModel/>>
            <div class="content__title text--center">
              <h1 class="text--uppercase">${contentModel.title_s}</h1>
            </div>
            <div class="content__details row">
              <div class="content__img col-12"><img class="img--full" src="${contentModel.image_s}" alt="Content Image"/></div>
              <div class="content__text activity-list col-12">
                <#if (contentModel.item_o.item)??>
                    <#list contentModel.item_o.item as element>
                        <div class="activity-list__content">
                          <div class="activity-list__content-text rounded-0">
                            <p>${element.content_t}</p>
                          </div>
                        </div>
                    </#list>
                </#if>
                <!--<div class="activity-list__content">
                  <div class="activity-list__content-text rounded-0">
                    <p>Xây dựng các công trình giao thông, thủy lợi, dân dụng, công nghiệp, kết cấu hạ tầng khu công nghiệp, khu đô thị;</p>
                  </div>
                </div>
                <div class="activity-list__content">
                  <div class="activity-list__content-text rounded-0">
                    <p>Sản xuất và kinh doanh vật liệu xây dựng cấu kiện bê tông đúc sẵn, cấu kiện bằng kim loại;</p>
                  </div>
                </div>
                <div class="activity-list__content">
                  <div class="activity-list__content-text rounded-0">
                    <p>Mua bán, cho thuê, máy móc thiết bị dùng trong xây dựng;</p>
                  </div>
                </div>
                <div class="activity-list__content">
                  <div class="activity-list__content-text rounded-0">
                    <p>Gia công, chế tạo và lắp đặt hệ thống dây truyền sản xuất, hệ thống điện công nghiệp;</p>
                  </div>
                </div>
                <div class="activity-list__content">
                  <div class="activity-list__content-text rounded-0">
                    <p>Tư vấn đầu tư xây dựng và quản lý dự án ( Không bao gồm tư vấn pháp luật tài chính);</p>
                  </div>
                </div>
                <div class="activity-list__content">
                  <div class="activity-list__content-text rounded-0">
                    <p>Kinh doanh nông nghiệp.</p>
                  </div>
                </div>
                -->
              </div>
            </div>
      </div>
    <!-- =============== -->
    </#if>
<@studio.toolSupport />