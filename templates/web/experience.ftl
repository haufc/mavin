<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
            <div class="container">
                <div class="row">
                    <#if (contentModel.item_o)??>
                    <#list contentModel.item_o.item as item>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                          <#if (item.itemTitle_s)??>
                          <h2 class="text--uppercase text--red">${item.itemTitle_s}</h2>
                          </#if>
                        </div>
                    </#list>
                    </#if>
                </div>
            </div>
    </div>
        <div class="content__details container">
            <div class="row">
                <#if (contentModel.item_o)??>
                <#list contentModel.item_o.item as element>
                    <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                        <#if (element.itemImage_s)?? >
                        <img src="${element.itemImage_s}" alt="" class="img--full">
                        </#if>
                    </div>
                    <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                         <a class="content__btn btn mt-3 rounded-0" href="/experience"> 
                            <span class="mr-3">Xem thêm</span>
                            <i class="fas fa-arrow-right"></i>
                        </a>
                    </div>
                </#list>
                </#if>
            </div>
        </div>
</div>
	<@studio.toolSupport />