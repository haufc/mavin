<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
  <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="padding-left: 15px;">
                  <h2 class="text--red text--title__small" style="font-weight: bold;" >${intros[5].title}</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="padding-left: 15px;">
                  <h2 class="text--red text--title__small" style="font-weight: bold;" >${intros[0].title}</h2>
                </div>
            </div>
        </div>
      </div>
      <div class="content__details container">
          <div class="row">
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 15px;">
                <img src="${intros[5].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 15px;" >
                <img src="${intros[0].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6 seemore_btn" style="padding: 15px;">
                 <a class="mt-3 rounded-0" href="${intros[5].url}"> 
                    <span class="mr-1">Xem thêm</span>
                    <i class="fa fa-play text--red"></i>
                </a>
            </div>

            <div class="col-lg6 col-md-6 col-sm-6 col-6 seemore_btn" >
                 <a class="mt-3 rounded-0" href="${intros[0].url}"> 
                    <span class="mr-1">Xem thêm</span>
                    <i class="fa fa-play text--red"></i>
                </a>
            </div>
          </div>
      </div>

      <div class="content__title">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="padding-left: 15px;" >
                  <h2 class="text--red text--title__small" style="font-weight: bold;" >${intros[1].title}</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="padding: 15px;" >
                  <h2 class="text--red text--title__small" style="font-weight: bold;" >${intros[4].title}</h2>
                </div>
            </div>
        </div>
      </div>
      <div class="content__details container">
          <div class="row">
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 15px;">
                <img src="${intros[1].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 15px;">
                <img src="${intros[4].avatar}" alt="" class="img--full">
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6 seemore_btn" style="padding: 15px;">
                 <a class="mt-3 rounded-0" href="${intros[1].url}"> 
                    <span class="mr-1">Xem thêm</span>
                    <i class="fa fa-play text--red"></i>
                </a>
            </div>
            <div class="col-lg6 col-md-6 col-sm-6 col-6 seemore_btn" style="padding: 15px;" >
                 <a class="mt-3 rounded-0" href="${intros[4].url}"> 
                    <span class="mr-1">Xem thêm</span>
                    <i class="fa fa-play text--red"></i>
                </a>
            </div>
          </div>
      </div>    
</div>
<@studio.toolSupport />