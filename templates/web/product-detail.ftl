<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
    <link rel="stylesheet" href="/static-assets/css/mavinex.css"/>
    <style>
        .line-white{
            color: #FFF;
            
        }

        body {
  font-family: Arial;
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}
/* 
.row:after {
  content: "";
  display: table;
  clear: both;
} */

/* Six columns side by side */
.column {
  float: left;
  /* width: 16.66%; */
  width: 24.633%;
  margin: 0 1px;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}

.mb-custom {
  /* position: absolute;
  bottom: 0; */
}
.btn-desc {
  background-color: #00559a;
  padding: 8px;
  width: 40%;
  bottom: 0;
  border: 1px solid #FFF;
  color: #FFF;
}

/*=========================*/
.carousel {
	margin: 50px auto;
	padding: 0 70px;
}
.carousel .item {
	color: #747d89;
	min-height: 325px;
    text-align: center;
	overflow: hidden;
}
.carousel .thumb-wrapper {
	/*padding: 25px 15px;
	background: #fff;
	border-radius: 6px;
	text-align: center;
	position: relative;
	box-shadow: 0 2px 3px rgba(0,0,0,0.2);*/
}
.carousel .item .img-box {
	height: 120px;
	margin-bottom: 20px;
	width: 100%;
	position: relative;
}
.carousel .item img {	
	max-width: 100%;
	max-height: 100%;
	display: inline-block;
	position: absolute;
	bottom: 0;
	margin: 0 auto;
	left: 0;
	right: 0;
}
.carousel .item h4 {
	font-size: 18px;
}
.carousel .item h4, .carousel .item p, .carousel .item ul {
	margin-bottom: 5px;
}
.carousel .thumb-content .btn {
	color: #7ac400;
    font-size: 11px;
    text-transform: uppercase;
    font-weight: bold;
    background: none;
    border: 1px solid #7ac400;
    padding: 6px 14px;
    margin-top: 5px;
    line-height: 16px;
    border-radius: 20px;
}
.carousel .thumb-content .btn:hover, .carousel .thumb-content .btn:focus {
	color: #fff;
	background: #7ac400;
	box-shadow: none;
}
.carousel .thumb-content .btn i {
	font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
.carousel .carousel-control {
	height: 44px;
	width: 40px;
	background: #7ac400;	
    margin: auto 0;
    border-radius: 4px;
	opacity: 0.8;
}
.carousel .carousel-control:hover {
	background: #78bf00;
	opacity: 1;
}
.carousel .carousel-control i {
    font-size: 36px;
    position: absolute;
    top: 50%;
    display: inline-block;
    margin: -19px 0 0 0;
    z-index: 5;
    left: 0;
    right: 0;
    color: #fff;
	text-shadow: none;
    font-weight: bold;
}
.carousel .item-price {
	font-size: 13px;
	padding: 2px 0;
}
.carousel .item-price strike {
	opacity: 0.7;
	margin-right: 5px;
}
.carousel .carousel-control.left i {
	margin-left: -2px;
}
.carousel .carousel-control.right i {
	margin-right: -4px;
}
.carousel .carousel-indicators {
	bottom: -50px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	margin: 4px;
	border-radius: 50%;
	border: none;
}
.carousel-indicators li {	
	background: rgba(0, 0, 0, 0.2);
}
.carousel-indicators li.active {	
	background: rgba(0, 0, 0, 0.6);
}
.carousel .wish-icon {
	position: absolute;
	right: 10px;
	top: 10px;
	z-index: 99;
	cursor: pointer;
	font-size: 16px;
	color: #abb0b8;
}
.carousel .wish-icon .fa-heart {
	color: #ff6161;
}
.star-rating li {
	padding: 0;
}
.star-rating i {
	font-size: 14px;
	color: #ffc000;
}
</style>
  </head>
  <body>
    <button onclick="topFunction()" id="btn-up-top" ><i class="fa fa-angle-up"></i></button>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content" style="background-color: #FFF;">
        <@renderComponent component=contentModel.slide_o.item />
         <div class="recruitment ">
        <div class="content__title text--center">
            <h1 style="background-color: #00559a; padding:10px;" class="text--uppercase text-white text-left">Kỹ sư công trình</h1>
          </div>
        <div class="container p-3">         
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <#list contentModel.productimage_o.item as myItem>
                    	<div class="mySlides">
                            <div class="numbertext">1 / 6</div>
                            <img src="${myItem.productimage_s}" alt="${myItem.productimagename_s}" style="width:100%">
                        </div>
                    </#list>
                  <a class="prev" onclick="plusSlides(-1)">❮</a>
                  <a class="next" onclick="plusSlides(1)">❯</a>
                
                  <div class="container">
                    <div class="row">
                      <#list contentModel.productimage_o.item as myItem>
                         <div class="column">
                            <img class="demo cursor" src="${myItem.productimage_s}" style="width:100%; height: 80px;" onclick="currentSlide(${myItem?counter})" alt="The Woods">
                          </div>
                      </#list>
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                   <h4 style="background-color: #CE181F; padding:10px;" class="text--uppercase text-white">
                        ${contentModel.productname_s}
                  </h4>
                  <div style="color: #00559A; padding:10px;">
                     <p>
                        ${contentModel.productdescription_html}
                      </p>
                  </div>
                  <div class="d-flex mb-custom">
                    <button class="btn-desc" style="width: 49%; margin-right: 2%;">${contentModel.phonenumber_s}</button>
                    <button class="btn-desc" style="width: 49%;">Yêu cầu báo giá</button>
                  </div>
                </div>
            </div>
        </div>
        <hr style="border: 3px solid #00559a">
        <div class="container">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6">
                <h4 style="background-color: #00559a; padding:10px; vertical-align: middle; line-height: normal;" class="text--uppercase text-white text--center">sản phẩm tương tự</h4>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="container-fluid">
                	<div class="row">
                			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                    			<div class="carousel-inner">
                    				<div class="item carousel-item active">
                    					<div class="row">
                    					    <#list relatedProducts as myItem>
                                                <div class="col-lg-3 col-md-3 col-sm-3">
                        							<div class="thumb-wrapper">
                        								<div class="img-box">
                        									<img src="${myItem.avatar}" class="img-responsive img-fluid" alt="">
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                    					</div>
                    				</div>
                    				<div class="item carousel-item">
                    					<div class="row">
                    						 <#list relatedProducts as myItem>
                                                <div class="col-lg-3 col-md-3 col-sm-3">
                        							<div class="thumb-wrapper">
                        								<div class="img-box">
                        									<img src="${myItem.avatar}" class="img-responsive img-fluid" alt="">
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                    					</div>
                    				</div>
                    			</div>
                			<!-- Carousel controls -->
                    			<a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
                    				<i class="fa fa-angle-left"></i>
                    			</a>
                    			<a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
                    				<i class="fa fa-angle-right"></i>
                    			</a>
                		</div>
                	</div>
                </div>
              </div>
            </div>
        </div>
        <hr style="border: 3px solid #00559a">
      </div>  
    </div>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel234/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/handlebars.min-latest.js"></script>
    <script src="/static-assets/js/jquery.twbsPagination.min.js"></script>
    <script src="/static-assets/js/script.js"></script>
     <script>
      var slideIndex = 1;
      showSlides(slideIndex);
      
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
      
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
      
      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        //captionText.innerHTML = dots[slideIndex-1].alt;
      }
      </script>
      
      <script type="text/javascript">
    	$(document).ready(function(){
    		$(".wish-icon i").click(function(){
    			$(this).toggleClass("fa-heart fa-heart-o");
    		});
    	});	
    </script>
  </body>
</html>
<@studio.toolSupport />