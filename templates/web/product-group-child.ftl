<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content__title">
        <div class="container">
            <div>
              <h1 class="text--uppercase">${contentModel.productgrouplevel1_s}</h1>
            </div>
        </div>
      </div>
      
      <div class="content__details container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-6 mb-5">
                <div class="card" style="width: 100%; border: none; border-radius: unset;">
                  <img class="card-img-top" src="${contentModel.productchildavatar_s}" alt="Card image cap">
                  <div class="card-body text-white" style="background-color: #CE181F;     position: absolute;top: 280px;">
                    <p class="card-text">${contentModel.productgrouplevel2_s}</p>
                  </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-6 mb-5" >
              
            </div>
          </div>
      </div>
<@studio.toolSupport />