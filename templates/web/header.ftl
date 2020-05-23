<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- navigation bar -->
<div class="mavinex-nav" <@studio.iceAttr component=contentModel/>>
    <div class="mavinex-nav__container container">
        <a class="mavinex-nav__logo navbar-brand" href="/trang-chu">
            <img class="header--logo" src="${contentModel.logo_s}" alt="Logo">
        </a>

        <div id="nav-content" class="mavinex-nav__links">
            <div class="dropdown">
              <a class="mavinex-nav__link" href="/gioi-thieu">Giới thiệu</a>
              <div class="dropdown-content">
                <a class="mavinex-nav__link" href="#">Giới thiệu chung</a>
                <a class="mavinex-nav__link" href="#">Lịch sử hình thành</a>
                <a class="mavinex-nav__link" href="#">Lĩnh vực hoạt động</a>
                <a class="mavinex-nav__link" href="#">Đối tác chiến lược</a>
              </div>
            </div>
            <a class="mavinex-nav__link" href="/san-pham">Sản phẩm</a>
            <a class="mavinex-nav__link" href="/tin-tuc">Tin tức</a>
            <a class="mavinex-nav__link" href="/nang-luc-kinh-nghiem">Năng lực kinh nghiệm</a>
            <a class="mavinex-nav__link" href="/co-hoi-nghe-nghiep">Tuyển dụng</a>
            <a class="mavinex-nav__link" href="/lien-he">Liên hệ</a>
        </div>

        <div class="mavinex-nav__btns">
            <button class="mavinex-nav__btn btn" onclick="toggleSearchBar()">
                <i class="fas fa-search"></i>
            </button>
            <button id="toggleNavBtn" class="mavinex-nav__btn btn" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </button>
        </div>

        <div id="searchBar" class="mavinex-nav__search-bar">
            <div class="input-group">
                <input 
                    type="text" 
                    class="form-control rounded-0" 
                    placeholder="" 
                    id="txtSearch"
                    onfocus="this.placeholder=' '"
                    onblur="this.placeholder='Nhập từ khóa tìm kiếm!'"
                >
                <div class="input-group-append">
                  <button type="button" class="btn btn-secondary rounded-0" onclick="search()"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /navigation bar -->