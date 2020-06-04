<#import "/templates/system/common/cstudio-support.ftl" as studio />
 <footer class="footer" <@studio.iceAttr component=contentModel/> style="background-image: url('${contentModel.backgroundImage_s}'); background-color: #FFF ; background-size: 100% 100%">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                  <p class="text-white text--uppercase" style="font-size: 14px;">${contentModel.companyname_s}</p>
                  <div class="footer__contact-info">
                    <p style="font-size: 14px;">Trụ sở: ${contentModel.companysAddress_s}</p>
                  </div>
                  <div class="footer__contact-info">
                    <p style="font-size: 14px;">Điện thoại: ${contentModel.phonenumber_s}</p>
                  </div>
                  <div class="footer__contact-info">
                    <p style="font-size: 14px;">Mã số thuế: ${contentModel.tax_s}  Ngày cấp: 3/4/2017</p></br>
                    <p style="font-size: 14px;">Nơi cấp: Sở Kế hoạch và Đầu tư tỉnh Hưng Yên.</p>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 footer-item__social">
                  <p class="text-white text--uppercase text--center footer-item__social--title" style="font-size: 23px;">Kết nối với chúng tôi</p>
                  <div class="footer__btns footer-item__social--icons">
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
                    <img src="/static-assets/images/logos/bct_logo.png" style="max-width: 100%; float:right;" alt="">
                    <p class="text-white text--copyright" style="font-size: 11px; margin-top: 10px; float:right;">${contentModel.brandCopyright_s}</p>
                </div>
            </div>
        </div>
    </footer>
<@studio.toolSupport />