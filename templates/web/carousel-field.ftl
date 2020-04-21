<#import "/templates/system/common/cstudio-support.ftl" as studio />
        <div class="content__details container">
        <div class="carousel slide" data-ride="carousel" id="expSlide" <@studio.iceAttr component=contentModel/>>
                <ol class="carousel-indicators">
                    <li data-target="#expSlide" data-slide-to="0" class="active"><span>1</span></li>
                    <li data-target="#expSlide" data-slide-to="1"><span>2</span></li>
                    <li data-target="#expSlide" data-slide="next"><i class="fas fa-caret-right"></i></li>
                </ol>
            <div class="carousel-inner">
                <#if (contentModel.image_o.item)?? && contentModel.image_o??>
                <#assign first = true>
                <#list contentModel.image_o.item as element>
                <#if first>
                    <div class="carousel-item active">
                    <#assign first = false>
                    <#else>
                    <div class="carousel-item">
                    </#if>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding: 0;">
                                <div>
                                    <img src="${element.image_s}" alt="Slide Image" class="img--full">

                                    <p class="text--italic text--white">${element.image1Title_s}</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div>
                                    <img src="${element.image2_s}" alt="Slide Image" class="img--full">

                                    <p class="text--italic text--white">${element.image2Title_s}</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding: 0;">
                                <div>
                                    <img src="${element.image3_s}" alt="Slide Image" class="img--full">

                                    <p class="text--italic text--white">${element.image3Title_s}</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div>
                                    <img src="${element.image4_s}" alt="Slide Image" class="img--full">

                                    <p class="text--italic text--white">${element.image4Title_s}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </#list>
                </#if>
            </div>
        </div>
        </div>
	<@studio.toolSupport />