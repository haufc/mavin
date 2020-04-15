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
                                <h1>${item.itemTitle_s}</h1>
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