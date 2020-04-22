<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
  <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                  <h2 class="text--uppercase text--red text--title__small">${intros[3].title}</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                  <h2 class="text--uppercase text--red text--title__small">${intros[1].title}</h2>
                </div>
            </div>
        </div>
      </div>
      <div class="content__details container">
          <div class="row">
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                <img src="${intros[3].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" >
                <img src="${intros[1].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                 <a class="content__btn btn mt-3 rounded-0" href="${intros[3].url}"> 
                    <span class="mr-3">Xem thêm</span>
                    <i class="fas fa-arrow-right"></i>
                </a>
            </div>

            <div class="col-lg6 col-md-6 col-sm-6 col-6" >
                 <a class="content__btn btn mt-3 rounded-0 fa fa-play text--red" href="${intros[1].url}"> 
                    <span class="mr-3">Xem thêm</span>
                </a>
            </div>
          </div>
      </div>

      <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                  <h2 class="text--uppercase text--red text--title__small">${intros[2].title}</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                  <h2 class="text--uppercase text--red text--title__small">${intros[0].title}</h2>
                </div>
            </div>
        </div>
      </div>
      <div class="content__details container">
          <div class="row">
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                <img src="${intros[3].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" >
                <img src="${intros[1].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 0;">
                 <a class="content__btn btn mt-3 rounded-0" href="${intros[2].url}"> 
                    <span class="mr-3">Xem thêm</span>
                    <i class="fas fa-arrow-right"></i>
                </a>
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" >
                 <a class="content__btn btn mt-3 rounded-0" href="${intros[0].url}"> 
                    <span class="mr-3">Xem thêm</span>
                    <i class="fas fa-arrow-right"></i>
                </a>
            </div>
          </div>
      </div>    
</div>
<@studio.toolSupport />