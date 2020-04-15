<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="mavinex-content" <@studio.iceAttr component=contentModel/>>
            <div class="mavinex-content__container">
                <div class="mavinex-content__header">
                    <div class="mavinex-content__header-content">
                        <div class="row">
                            <#if (contentModel.item_o)?? >
                            <#list contentModel.item_o as element>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <#if (element.itemTitle_s)?? >
                                <h1>${element.itemTitle_s}</h1>
                                </#if>
                            </div>
                            </#list>
                            </#if>
                        </div>    
                    </div>
                </div>
            </div>
           
    </div>
	<@studio.toolSupport />