<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!--<div class="content__img col-sm-12 col-md-6 col-lg-6" <@studio.iceAttr component=contentModel/>>
    <img class="img--full" src="${contentModel.image_s}" alt="Content Image"/>
    <h4 class="text--uppercase text-white" style="padding-top: 15px;">${contentModel.title_s}</h4>
    <a class="content__btn btn mt-3 rounded-0" href="/experience"> 
        <span class="mr-3">Xem thêm</span>
        <i class="fas fa-arrow-right"></i>
    </a>
</div> -->

<div class="col-sm-12 col-md-6 col-lg-6 content__img" <@studio.iceAttr component=contentModel/>>
    <img class="img--full" src="${contentModel.image_s}" alt="Content Image"/>
    <h4 class="text--uppercase text-white" style="padding-top: 15px;">${contentModel.title_s}</h4>
    <a class="content__btn btn mt-3 rounded-0" href="/experience"> 
        <span class="mr-3">Xem thêm</span>
        <i class="fas fa-arrow-right"></i>
    </a>
</div>
<@studio.toolSupport />