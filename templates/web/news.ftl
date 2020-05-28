<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content__details container">
    <#list news as aNews>
    <div class="row">
    <i class="fas fa-play text--red" style="padding-top: 5px;"></i><p class="text-white" style="padding-left:10px; font-size:14pt; font-weight:bold;">${aNews.title}</p>
    </div>
    <ol>
    <div class="row">    
      <li style="list-style-type: none; padding-left:10px;"><p class="text-white" style="font-size:14pt; font-weight:bold;"><span style="font-size:17pt;">-</span>  ${aNews.content}</p></li>    
    </div>
    </#list>
    </ol>
    </#list>
</div>
<@studio.toolSupport />