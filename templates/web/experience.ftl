<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="mavinex-content" <@studio.iceAttr component=contentModel/>>
            <div class="mavinex-content__container">
                <div class="mavinex-content__header">
                    <div class="mavinex-content__header-content">
                        <div class="row">
                            <#if (contentModel.item_o)?? >
                            <#list contentModel.item_o.item as item>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <#if (item.itemTitle_s)?? >
                                <h2 style="margin-top:20px; color:red;">${item.itemTitle_s}</h2>
                                </#if>
                            </div>
                            </#list>
                            <#else>
                            ABCCC
                            </#if>
                            
                        </div>    
                    </div>
                </div>
            </div>
            <div class="mavinex-content__body">
                <div class="mavinex-content__body-content container">
                    <div class="row">
                        <#if (contentModel.item_o)?? >
                        <#list contentModel.item_o.item as element>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div>  
                                <#if (element.itemImage_s)?? >
                                <img src="${element.itemImage_s}">
                                <p><span style="margin-right: 15px; font-size:20px; color: white;">Xem tiếp</span><i style="font-size: 35px;" class="fas fa-caret-right text--red"></i></p> 
                                </#if>
                            </div>
                        </div>
                        </#list>
                        </#if>
                    </div>
                </div>
            </div>
    </div>
	<@studio.toolSupport />