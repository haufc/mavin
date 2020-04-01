<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="nav-bar" id="nav" <@studio.iceAttr component=contentModel/>>
  <div class="nav-bar__container">
    <input id="toggleMenu" type="checkbox" name="toggleMenu"/>
    <a class="nav-bar__logo nav-bar-brand" href="/home">
       <img src="${contentModel.logo_s}" alt="Logo"/>
    </a>
    <div class="nav-bar__links" id="navLinks">
        <a class="nav-bar__link" href="/introduct">Giới thiệu</a>
        <a class="nav-bar__link" href="#activity">Lĩnh vực hoạt động</a>
        <a class="nav-bar__link" href="/experiment">Năng lực kinh nghiệm</a>
        <a class="nav-bar__link" href="/all-jobs">Tuyển dụng</a>
        <a class="nav-bar__link" href="#contact">Liên hệ</a>
    </div>
    <div class="nav-bar__btns">
      <select class="selectpicker mr-1" id="languageSelector" data-width="fit" data-style="btn-primary rounded-0">
        <option data-content="&lt;i class=&quot;flag-icon flag-icon-vn mr-1&quot;&gt;&lt;/i&gt; &lt;span&gt;VIE&lt;/span&gt;">VIE</option>
        <option data-content="&lt;i class=&quot;flag-icon flag-icon-us mr-1&quot;&gt;&lt;/i&gt; &lt;span&gt;EN&lt;/span&gt;">EN</option>
      </select>
      <button class="nav-bar__btn btn btn-basic rounded-circle" onclick="openSearch()"><i class="fas fa-search"></i></button>
      <label class="nav-bar__toggle-menu-btn btn btn-basic m-0" for="toggleMenu"><i class="fas fa-bars"></i></label>
    </div>
    <div class="nav-bar__search" id="search">
      <div class="nav-bar__search-content">
        <div class="input-group">
          <input class="form-control rounded-0" type="text"/>
          <div class="input-group-prepend">
            <button class="btn btn-info rounded-0"><i class="fas fa-search"></i></button>
            <button class="btn btn-danger" onclick="closeSearch()"><i class="fas fa-times"></i></button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>