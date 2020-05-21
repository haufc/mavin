<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div id="products" class="carousel slide" data-ride="carousel" <@studio.iceAttr component=contentModel/>>
            <div class="content__title"></div>
            <div class="content__details container">
                <h1 class="mavinex-products__sec-title">${contentModel.tittle_s}</h1>

                <div class="mavinex-products__content carousel-inner">
                    <#if (contentModel.products_o)??>
                    <#assign first = true>
                    <#list contentModel.products_o.item as item>
                        <#if first>
                        <div class="carousel-item active">
                        <#assign first= false>
                        <#else>
                        <div class="carousel-item">
                        </#if>
                            <div class="mavinex-products__items row">
                                <div class="mavinex-products__item col-xs-12 col-sm-12 col-md-3 col-lg-3 p-0">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-blue">
                                        <div class="mavinex-products__item-text">
                                            <h3>${item.pTittle1_s}</h3>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage1_s}" alt="Carousel Image">
                                </div>
    
                                <div class="mavinex-products__item col-xs-12 col-sm-12 col-md-3 col-lg-3 p-0">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-red">
                                        <div class="mavinex-products__item-text">
                                            <h3>${item.pTittle2_s}</h3>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage2_s}" alt="Carousel Image">
                                </div>
    
                                <div class="mavinex-products__item col-xs-12 col-sm-12 col-md-3 col-lg-3 p-0">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-blue">
                                        <div class="mavinex-products__item-text">
                                            <h3>${item.pTittle3_s}</h3>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage3_s}" alt="Carousel Image">
                                </div>
    
                                <div class="mavinex-products__item col-xs-12 col-sm-12 col-md-3 col-lg-3 p-0">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-red">
                                        <div class="mavinex-products__item-text">
                                            <h3>${item.pTittle4_s}</h3>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage4_s}" alt="Carousel Image">
                                </div>
                            </div>
                        </div>
                    </div>
                </#list>
                </#if>
                
                <div class="test">
                    <a class="mavinex-products__ctrl-btn carousel-control-prev" href="#products" role="button" data-slide="prev">
                        <img src="../assets/images/mavinex_left_arrow.png" alt="Left Arrow">
                    </a>
                    <a class="mavinex-products__ctrl-btn carousel-control-next" href="#products" role="button" data-slide="next">
                        <img src="../assets/images/mavinex_right_arrow.png" alt="Right Arrow">
                    </a>
                </div>
            </div>
        </div>
<@studio.toolSupport />