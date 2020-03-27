<#import "/templates/system/common/cstudio-support.ftl" as studio />
<footer <@studio.iceAttr component=contentModel/>>
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
                <a href="${media.url_s}" class="fa ${media.icon_s}"></a>
                </#list>
            </#if>
          </div> 
        </div>
        <p class="text-white">${contentModel.brandCopyright_s}</p>
      </div>
    </div>
</footer>
<@studio.toolSupport />