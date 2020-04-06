
print "this is imtem"
// Import the required classes
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder

def queryStatement = 'content-type:"/component/header"'

// Use the appropriate builders according to your query
def builder = new SearchSourceBuilder()
    .query(QueryBuilders.queryStringQuery(queryStatement))

// Execute the query
def executedQuery = elasticsearch.search(new SearchRequest().source(builder))

def itemsFound = executedQuery.hits.totalHits
def items = executedQuery.hits.hits
print itemsFound 
print items