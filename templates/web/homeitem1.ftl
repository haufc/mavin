<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <#if contentModel.isVerticalContent_b == true>
    	<!-- Giới thiệu -->
         <div class="content__item" id="about">
            <div class="content__title text--center">
              <h1 class="text--uppercase">$</h1>
            </div>
            <div class="content__details row">
              <div class="content__img col-sm-12 col-md-6 col-lg-6">
                <img class="img--full" src="../../assets/images/content_img_1.png" alt="Content Image"/>
              </div>
              <div class="content__text col-sm-12 col-md-6 col-lg-6">
                <p>Được thành lập từ năm 2017, với tiền thân là Phòng dự án của Tập đoàn Mavin, Công ty cổ Phần Mavinex được biết đến là đơn vị triển khai thi công các dự án trọng điểm của tập đoàn Mavin trong các lĩnh vực thiết kế và xây dựng các nhà máy thức ăn chăn nuôi, thiết kế và xây dựng các trang trại chăn nuôi, Trong những năm qua Công ty đã triển khai hàng chục các dự án trọng điểm, có thể kể ra như: dự án xây dựng nhà máy thức ăn thủy Sản tại Hưng Yên với công suất  45.000 tấn/năm; nhà máy thức ăn gia súc Nghệ An với công suất 300.000 tấn/năm; và nhà máy Đồng Tháp với công suất  350.000 tấn/năm.</p>
                <p>Việc kết hợp hài hòa công nghệ thiết bị của các hãng hàng đầu thế giới của các hàng Buhler, Vandesen, Chronos…cùng sự sáng tạo của các kỹ sư Mavinex đã xây dựng nên các nhà máy sản xuất thức ăn chăn nuôi công nghệ 4.0, Việc áp dụng công nghệ 4.0 giúp Mavin giảm được chi phí sản xuất, vận hành, tăng năng suất lao động và bảo vệ môi trường cũng như bảo vệ sức khỏe của người sản xuất và tiêu dùng.</p>
                <button class="content__btn btn rounded-0"> <span class="text-white mr-3">Xem thêm</span><i class="fas fa-arrow-right"></i></button>
              </div>
            </div>
          </div>
        <!-- =============== -->
    <#else>
        <!-- Năng lực kinh nghiệm -->
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
    <!-- =============== -->
    </#if>
<@studio.toolSupport />