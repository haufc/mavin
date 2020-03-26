<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Trang chủ</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <!--<div class="welcome-img" style="background-image: url(&quot;../../assets/images/bg_1.png&quot;)"></div> -->
    <div class="content">
        <#list (contentModel.sections_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
      <!--<div class="content__item" id="about">
        <div class="content__title text--center">
          <h1 class="text--uppercase">Giới thiệu</h1>
        </div>
        <div class="content__details row">
          <div class="content__img col-sm-12 col-md-6 col-lg-6"><img class="img--full" src="../../assets/images/content_img_1.png" alt="Content Image"/></div>
          <div class="content__text col-sm-12 col-md-6 col-lg-6">
            <p>Được thành lập từ năm 2017, với tiền thân là Phòng dự án của Tập đoàn Mavin, Công ty cổ Phần Mavinex được biết đến là đơn vị triển khai thi công các dự án trọng điểm của tập đoàn Mavin trong các lĩnh vực thiết kế và xây dựng các nhà máy thức ăn chăn nuôi, thiết kế và xây dựng các trang trại chăn nuôi, Trong những năm qua Công ty đã triển khai hàng chục các dự án trọng điểm, có thể kể ra như: dự án xây dựng nhà máy thức ăn thủy Sản tại Hưng Yên với công suất  45.000 tấn/năm; nhà máy thức ăn gia súc Nghệ An với công suất 300.000 tấn/năm; và nhà máy Đồng Tháp với công suất  350.000 tấn/năm.</p>
            <p>Việc kết hợp hài hòa công nghệ thiết bị của các hãng hàng đầu thế giới của các hàng Buhler, Vandesen, Chronos…cùng sự sáng tạo của các kỹ sư Mavinex đã xây dựng nên các nhà máy sản xuất thức ăn chăn nuôi công nghệ 4.0, Việc áp dụng công nghệ 4.0 giúp Mavin giảm được chi phí sản xuất, vận hành, tăng năng suất lao động và bảo vệ môi trường cũng như bảo vệ sức khỏe của người sản xuất và tiêu dùng.</p>
            <button class="content__btn btn rounded-0"> <span class="text-white mr-3">Xem thêm</span><i class="fas fa-arrow-right"></i></button>
          </div>
        </div>
      </div>
      -->
      <div class="content__item" id="activity">
        <div class="content__title text--center">
          <h1 class="text--uppercase">Lĩnh vực hoạt động</h1>
        </div>
        <div class="content__details row">
          <div class="content__img col-12"><img class="img--full" src="../../assets/images/content_img_5.png" alt="Content Image"/></div>
          <div class="content__text activity-list col-12">
            <div class="activity-list__content">
              <div class="activity-list__content-text rounded-0">
                <p>Xây dựng các công trình giao thông, thủy lợi, dân dụng, công nghiệp, kết cấu hạ tầng khu công nghiệp, khu đô thị;</p>
              </div>
            </div>
            <div class="activity-list__content">
              <div class="activity-list__content-text rounded-0">
                <p>Sản xuất và kinh doanh vật liệu xây dựng cấu kiện bê tông đúc sẵn, cấu kiện bằng kim loại;</p>
              </div>
            </div>
            <div class="activity-list__content">
              <div class="activity-list__content-text rounded-0">
                <p>Mua bán, cho thuê, máy móc thiết bị dùng trong xây dựng;</p>
              </div>
            </div>
            <div class="activity-list__content">
              <div class="activity-list__content-text rounded-0">
                <p>Gia công, chế tạo và lắp đặt hệ thống dây truyền sản xuất, hệ thống điện công nghiệp;</p>
              </div>
            </div>
            <div class="activity-list__content">
              <div class="activity-list__content-text rounded-0">
                <p>Tư vấn đầu tư xây dựng và quản lý dự án ( Không bao gồm tư vấn pháp luật tài chính);</p>
              </div>
            </div>
            <div class="activity-list__content">
              <div class="activity-list__content-text rounded-0">
                <p>Kinh doanh nông nghiệp.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="content__item" id="expertise">
        <div class="content__title text--center">
          <h1 class="text--uppercase">Năng lực kinh nghiệm</h1>
        </div>
        <div class="content__details row">
          <div class="content__img text--center col-sm-12 col-md-6 col-lg-6">
            <h3 class="text--uppercase text-white">Lĩnh vực xây dựng</h3><img class="img--full" src="../../assets/images/content_img_2.png" alt="Content Image"/><a class="content__btn btn mt-3 rounded-0" href="construction_industry.html"> <span class="mr-3">Xem thêm</span><i class="fas fa-arrow-right"></i></a>
          </div>
          <div class="content__img text--center col-sm-12 col-md-6 col-lg-6">
            <h3 class="text--uppercase text-white">TƯ VẤN TỔNG THỂ - THIẾT KẾ TRANG TRẠI CHĂN NUÔI</h3><img class="img--full" src="../../assets/images/content_img_3.png" alt="Content Image"/><a class="content__btn btn mt-3 rounded-0"> <span class="mr-3">Xem thêm</span><i class="fas fa-arrow-right"></i></a>
          </div>
        </div>
      </div>
      <div class="content__logo-list">
        <div class="content__logo-img col-12"><img class="img--full" src="../../assets/images/logos.png" alt="Logos"/></div>
      </div>
    </div>
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
  </body>
</html>
<@studio.toolSupport />