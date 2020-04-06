
print "this is imtem"
// Import the required classes
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder

def queryStatement = 'content-type:"/page/jobpage"'

// Use the appropriate builders according to your query
def builder = new SearchSourceBuilder()
    .query(QueryBuilders.queryStringQuery(queryStatement))

// Execute the query
def executedQuery = elasticsearch.search(new SearchRequest().source(builder))

def itemsFound = executedQuery.hits.totalHits
def items = executedQuery.hits.hits
print "My list job"
print items

def topNavItems = [:]
def siteDir = siteItemService.getSiteTree("/site/website", 3)

if(siteDir) {
    def dirs = siteDir.childItems
    dirs.each { dir ->
            def dirName = dir.getStoreName()
            def dirItem = siteItemService.getSiteItem("/site/website/${dirName}/index.xml")
            if (dirItem != null) {
                def dirDisplayName = dirItem.queryValue('internal-name')
                   topNavItems.put(dirName, dirDisplayName)
            }
   }
}
print "Search with dir name"
print topNavItems