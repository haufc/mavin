<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- Handlebar Templates -->
	<script id="search-results-template" type="text/x-handlebars-template">
		{{#each results}}
		    <div class="co-md-4 col-lg-4 col-sm-12 row" style="padding-bottom: 10px;">
                <div class="search--img co-md-6 col-lg-6 col-sm-12">
                    <img src="{{image}}" alt="" >
                </div>
                <div class="search--text co-md-6 col-lg-6 col-sm-12">
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
<div class="content__title text--center">
    <h1 class="text--uppercase">Kết quả tìm kiếm</h1>
</div>
<div class="content__details">
<!-- <h1 class="text--center text--uppercase text-white mb-3">TUYỂN DỤNG THÁNG 03/2020</h1> -->
    <div class="row ">
        <div class="search-result_item">
        </div>
    </div>
</div>

<@studio.toolSupport />