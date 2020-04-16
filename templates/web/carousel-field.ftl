<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div <@studio.iceAttr component=contentModel/>
        <p><i class="fas fa-caret-right text--red"></i> <span></span></p>

        <div id="expSlide" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#expSlide" data-slide-to="0" class="active"><span>1</span></li>
                <li data-target="#expSlide" data-slide-to="1"><span>2</span></li>
                <li data-target="#expSlide" data-slide-to="2"><span>3</span></li>
                <li data-target="#expSlide" data-slide="next"><i class="fas fa-caret-right"></i></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div>
                                    <img src="../assets/images/small_img_4.png" alt="Slide Image">

                                    <p class="text--italic text--white">Dự án Nhà máy Thức ăn chăn nuôi Mavin Austfeed Nghệ An</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div>
                                    <img src="../assets/images/small_img_5.png" alt="Slide Image">

                                    <p class="text--italic text--white">Dự án Nhà máy Thức ăn chăn nuôi Mavin Austfeed Nghệ An</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div>
                                    <img src="../assets/images/small_img_4.png" alt="Slide Image">

                                    <p class="text--italic text--white">Dự án Nhà máy Thức ăn chăn nuôi Mavin Austfeed Nghệ An</p>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div>
                                    <img src="../assets/images/small_img_5.png" alt="Slide Image">

                                    <p class="text--italic text--white">Dự án Nhà máy Thức ăn chăn nuôi Mavin Austfeed Nghệ An</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<@studio.toolSupport />