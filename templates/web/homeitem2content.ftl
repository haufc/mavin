<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content__img text--center col-sm-12 col-md-6 col-lg-6" <@studio.iceAttr component=contentModel/>>
    <h4 class="text--uppercase text-white">${contentModel.title_s}</h4>
    <img class="img--full" src="${contentModel.image_s}" alt="Content Image"/>
</div>
<div class="content__img text--center col-sm-12 col-md-6 col-lg-6" >
    <a class="content__btn btn mt-3 rounded-0" href="/experience"> 
        <span class="mr-3">Xem thêm</span>
        <i class="fas fa-arrow-right"></i>
    </a>
</div>
<@studio.toolSupport />