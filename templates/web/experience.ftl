<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content">
    <div class="content__title">
        <div class="container">
                <div class="row">
                    <#if (contentModel.item_o)??>
                    <#list contentModel.item_o.item as item>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                          <#if (item.itemTitle_s)??>
                          <h2 class="text--uppercase text--red text--title__small">${item.itemTitle_s}</h2>
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
                <#assign first = true>
                <#list contentModel.item_o.item as element>
                <#if first>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                    <#assign first = false>
                    <#else>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                </#if>
                        <#if (element.itemImage_s)?? >
                        <img src="${element.itemImage_s}" alt="" class="img--full">
                        </#if>
                    </div>
                </#list>
                </#if>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-6 seemore_btn" style="padding: 0;">
                         <a class="mt-3 rounded-0" href="/experience"> 
                            <i class="fa fa-play text--red"></i>
                            <span class="mr-3">Xem thêm</span>
                        </a>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-6 seemore-btn">
                         <a class="mt-3 rounded-0"> 
                            <i class="fa fa-play text--red"></i>
                            <span class="mr-3">Xem thêm</span>
                        </a>
                    </div>
    
            </div>
        </div>
</div>
	<@studio.toolSupport />