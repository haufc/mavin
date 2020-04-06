<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content__title text--center">
    <h1 class="text--uppercase">${contentModel.title_s}</h1>
</div>
      <div class="content__details">
        <div class="job row">
              <#list contentModel.section_o.item as module>
                	<div class="job__item text-white col-sm-12 col-md-4 col-lg-4">
                        <div class="job__item-content"><a href="#"><img class="img--full" src="/static-assets/images/featured/content_img_10.png" alt="Job"/></a>
                          <div class="job__item-infos"><a href="#">
                              <h3 class="job__item-title text--center">Kỹ sư công trình</h3></a>
                            <table class="job__item-desc">
                              <tr>
                                <td>Hình thức </td>
                                <td>Fulltime</td>
                              </tr>
                              <tr>
                                <td>Thời hạn</td>
                                <td>20/02/2020</td>
                              </tr>
                            </table>
                          </div>
                          <a href="/site/website/jobs/ky-su-cong-trinh/index.xml" class="job__item-btn btn btn-primary text--uppercase rounded-0">Xem thêm</a>
                        </div>
                      </div>
              </#list>
        </div>
      </div>
<@studio.toolSupport />