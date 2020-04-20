<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!--<footer <@studio.iceAttr component=contentModel/>>
    <div class="footer" style="background-image: url('${contentModel.backgroundImage_s}');">
      <div class="footer__contact-infos">
        <h3 class="text--uppercase text-white">Liên hệ</h3>
        <p class="text-white">CÔNG TY CỔ PHẦN MAVINEX (MAVINEX)</p>
        <div class="footer__contact-info"><i class="fas fa-address-card"></i>
          <p>Trụ sở: Thôn Lôi Cầu, xã Việt Hòa, huyện Khoái Châu, tỉnh Hưng Yên</p>
        </div>
        <div class="footer__contact-info"><i class="fas fa-phone"></i>
          <p>0221 3 921 921 </p>
        </div>
        <div class="footer__contact-info"><i class="fas fa-fax"></i>
          <p>Fax: 0221 3 920 989</p>
        </div>
        <div class="footer__contact-info"><i class="fas fa-money-bill"></i>
          <p>Mã số thuế: 0901009304</p>
        </div>
      </div>
      <div class="footer__contact-things">
        <div class="footer__sign-up mb-3">
          <h3 class="text--uppercase">Đăng ký nhận bản tin</h3>
          <div class="input-group">
            <input class="form-control rounded-0" type="text" placeholder="..."/>
            <div class="input-group-prepend">
              <button class="btn btn-info rounded-0"><i class="fas fa-envelope"></i></button>
            </div>
          </div>
        </div>
        <div class="footer__social-btns mb-3">
          <div class="footer__btns">
            <#if (contentModel.socialMedia_o.item)??>
                <#list contentModel.socialMedia_o.item as media>
                <a href="${media.url_s}" class="btn rounded-0" style="border: 1px solid #ddd; background: #fff; color: #00579d; width: 46px; height: 47px; position:relative;">
                    <i class="fab ${media.icon_s}" style="font-size:20px; position: absolute; top:50%; left: 50%; transform: translate(-50%,-50%);"></i>
                </a>
                </#list>
            </#if>
          </div> 
        </div>
        <p class="text-white">${contentModel.brandCopyright_s}</p>
      </div>
    </div>
</footer> -->
    <footer class="footer" <@studio.iceAttr component=contentModel/> style="background-image: url('${contentModel.backgroundImage_s}');">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                  <p class="text-white text--uppercase">${contentModel.companyname_s}</p>
                  <div class="footer__contact-info">
                    <p>Trụ sở: ${contentModel.companysAddress_s}</p>
                  </div>
                  <div class="footer__contact-info">
                    <p>${contentModel.phonenumber_s}</p>
                  </div>
                  <div class="footer__contact-info">
                    <p>Mã số thuế: ${contentModel.tax_s}</p>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="footer__sign-up mb-3">
                      <h4 class="text--uppercase">Đăng ký nhận bản tin</h4>
                      <div class="input-group">
                        <input class="form-control rounded-0" type="text" placeholder="..."/>
                        <div class="input-group-prepend">
                          <button class="btn btn-info rounded-0"><i class="fas fa-envelope"></i></button>
                        </div>
                      </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                  <h3 class="text-white text--uppercase text--center">Kết nối với chúng tôi</h3>
                  <div class="footer__btns">
                    <#if (contentModel.socialMedia_o.item)??>
                        <#list contentModel.socialMedia_o.item as media>
                            <a href="${media.url_s}" class="btn rounded-0" style="border: 1px solid #ddd; background: #fff; color: #00579d; width: 46px; height: 47px; position:relative;">
                                <i class="fab ${media.icon_s}" style="font-size:20px; position: absolute; top:50%; left: 50%; transform: translate(-50%,-50%);"></i>
                            </a>
                        </#list>
                    </#if>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                    <img src="/static-assets/images/logos/bct_logo.png" style="max-width: 100%;" alt="">
                    <p class="text-white text--copyright" style="font-size: 11px; margin-top: 10px;">${contentModel.brandCopyright_s}</p>
                </div>
            </div>
        </div>
    </footer>
<@studio.toolSupport />