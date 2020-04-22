<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#if contentModel.isVerticalContent_b == false>
    <div class="content" <@studio.iceAttr component=contentModel/>>
        <div class="content__title">
                <div class="container">
                        <div class="content__title text--center">
                          <#if (contentModel.title_s)??>
                          <h2 class="text--uppercase text--red">${contentModel.title_s}</h2>
                          </#if>
                        </div>
                </div>
        </div>
        <div class="content__details container">
            <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12  order-1">
                        <#if (contentModel.item_o.item)??>
                            <div class="d-flex">
                                <#list contentModel.item_o.item as element>
                                    <i class="fa fa-play"></i> <p style="color:#fff; font-size:14pt;">${element.content_t}<p>
                                </#list>
                            </div>
                        </#if>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 order-2">
                        <#if (contentModel.image_s)?? >
                        <img src="${contentModel.image_s}" alt="" class="img--full">
                        </#if>
                    </div>
            </div>
        </div>
    <#else>
        <div class="content" <@studio.iceAttr component=contentModel/>>
            <div class="content__title">
                    <div class="container">
                        <div class="row">
                            <div class="content__title text--center">
                              <#if (contentModel.itemTitle_s)??>
                              <h2 class="text--uppercase text--red ">${contentModel.itemTitle_s}</h2>
                              </#if>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="content__details row">
              <div class="content__img col-12"><img class="img--full" src="${contentModel.image_s}" alt="Content Image"/></div>
              <div class="content__text activity-list col-12">
                <#if (contentModel.item_o.item)??>
                    <#list contentModel.item_o.item as element>
                        <div class="activity-list__content">
                          <div class="activity-list__content-text rounded-0">
                            <p><i class="fa fa-play"></i> ${element.content_t}</p>
                          </div>
                        </div>
                    </#list>
                </#if>
              </div>
            </div>
      </div>

    </#if>
<@studio.toolSupport />