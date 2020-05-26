package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class NewsSearchHelper{
    static final String NEWS_CONTENT_TYPE_QUERY ="content-type:\"/page/newsdetail\""
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS  = 1000
    
    def elasticsearch
    UrlTransformationService UrlTransformationService
    
    NewsSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def search(categories, start = DEFAULT_START, rows = DEFAULT_ROWS){
        def q = "${NEWS_CONTENT_TYPE_QUERY}"
        if(categories){
            def categoriesQuery = getFieldQueryWithMultipleValues("categories_o.item.key",categories)
            q = "${q} AND ${categoriesQuery}"
        }
        def builder = new SearchSourceBuilder()
                        .query(QueryBuilders.queryStringQuery(q))
                        .from(start)
                        .size(rows)
        def result = elasticsearch.search(new SearchRequest().source(builder))

        if(result){
            return processNewsListingResults(result)
        }else{
            return[]
        }
    }
    def processNewsListingResults(result){
        def news = []
        def details = result.hits.hits*.getSourceAsMap()
        if (details){
            details.each { doc ->
                def aNews = [:]
                    aNews.title = doc.title_s
                    aNews.image = doc.image_s
                    aNews.content = doc.content_html
                    aNews.url = urlTransformationService.transform('storeUrlToRenderUrl', doc.localId)
                news << aNews
            }
        }
        
        return news
    }
}