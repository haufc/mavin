<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div class="mavinex-content" <@studio.iceAttr component=contentModel/>>
            <div class="mavinex-content__container">
                <div class="mavinex-content__header">
                    <div class="mavinex-content__header-content">
                        <div class="row">
                            <#list contentModel.item_o as element>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h1>${element.itemTitle_s}</h1>
                            </div>
                            </#list>
                        </div>    
                    </div>
                </div>
            </div>
            <div class="mavinex-content__body">
                <div class="mavinex-content__body-content container">
                    <div class="row">
                        <#list contentModel.item_o as element>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div>
                                <img src="${element.itemImage_s}">
                            </div>
                        </div>
                        </#list>
                    </div>
                </div>
            </div>
    </div>
	<@studio.toolSupport />