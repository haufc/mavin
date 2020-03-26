<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <#if (contentModel.image_o.item)??>
            <#list contentModel.image_o.item as element>
                <div class="carousel-item welcome-img active" style="background-image: url('${}')">
                </div>
            </#list>
        </#if>
    <!--<div class="carousel-item welcome-img" style="background-image: url(&quot;../../assets/images/bg_1.png&quot;)">
    </div>
    <div class="carousel-item welcome-img" style="background-image: url(&quot;../../assets/images/bg_1.png&quot;)">
    </div>
    -->
    </div>

    
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev" style="z-index: 0;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
    </a>
    
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next" style="z-index: 0;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>
</div>