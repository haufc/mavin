package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class SearchContentHelper {
    static final String JOB_CONTENT_TYPE_QUERY = "content-type:\"/page/jobpage\""
    static final String HOME_CONTENT_TYPE_QUERY = "content-type:\"/page/jobpage\""
   
    static final String[] JOB_HIGHLIGHT_FIELDS = ["title_s", "item_o.item.content_t"]
    
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 10
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
    String jobContentQuery = JOB_CONTENT_TYPE_QUERY
    String homeContentQuery = HOME_CONTENT_TYPE_QUERY
    
    SearchContentHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchJobs(String userTerm, start = DEFAULT_START, rows = DEFAULT_ROWS) {
        def q = "${jobContentQuery}"
        
        if (userTerm) {
            if(!userTerm.contains(" ")) {
                userTerm = "${userTerm}~1 OR *${userTerm}*"
            }
            
            def userTermQuery = "(title_s:(${userTerm}) OR item_o.item.content_t:(${userTerm}))"
            q = "${q} AND ${userTermQuery}"
        }
        
        def highlighter = SearchSourceBuilder.highlight()
        JOB_HIGHLIGHT_FIELDS.each{ field -> highlighter.field(field) }
        
        def builder = new SearchSourceBuilder()
          .query(QueryBuilders.queryStringQuery(q))
          .from(start)
          .size(rows)
          .highlighter(highlighter)
          
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
          return processUserSearchResults(result)
        } else {
          return []
        }
    }
    
    def processUserSearchResults(result) {
        def jobs = []
        def hits = result.hits.hits
        
        if (hits) {
            hits.each {hit -> 
                def doc = hit.getSourceAsMap()
                def job = [:]
                    job.title = doc.title_s
                    job.type = doc.type_s
                    job.duration = doc.duration_dt
                    job.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                    job.image = doc.image_s
                
                if (hit.highlightFields) {
                    def jobHighlights = hit.highlightFields.values()*.getFragments().flatten()*.string()
                    if (jobHighlights) {
                         def highlightValues = []
                         
                         jobHighlights.each {value -> 
                             highlightValues << value
                         }
                         
                         job.highlight = StringUtils.join(highlightValues, "... ")
                         job.highlight = StringUtils.strip(job.highlight)
                    }
                }
                jobs << job
            }
        }
        
        return jobs
    }
    

}