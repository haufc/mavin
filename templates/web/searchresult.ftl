<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- Handlebar Templates -->
	<script id="search-results-template" type="text/x-handlebars-template">
		{{#each results}}
		    <div class="col-lg-4 col-md-4 col-sm-12 row search-result_content" style="margin-bottom: 20px;">
                <div class="search--img col-lg-6 col-md-6 col-sm-12" >
                    <img src="{{image}}" alt="" class="img--full">
                </div>
                <div class="search--text col-lg-6 col-md-6 col-sm-12">
                    <h5 ><b>{{title}}</b></h5>
                    {{#if highlight}}
        		        <p class="limit-text-250">{{{highlight}}}</p>
        			{{/if}}
                </div>
            </div>
		{{else}}
		    <p>No results found</p>
		{{/each}}
		
</script>
<div class="content__title text--center" style="background-color: #FFF">
    <h1 class="text--uppercase">Kết quả tìm kiếm</h1>
</div>
<div class="content__details">
<!-- <h1 class="text--center text--uppercase text-white mb-3">TUYỂN DỤNG THÁNG 03/2020</h1> -->
    <div class="row ">
        <div class="search-result_item row">
        </div>
    </div>
</div>

<@studio.toolSupport />