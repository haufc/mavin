package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class SearchContentHelper {
    static final String ARTICLE_CONTENT_TYPE_QUERY = "content-type:\"/page/article\""
    static final String[] HIGHLIGHT_FIELDS = ["title_s", "item_o.item.content_t"]
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 10
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
    SearchContentHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
}