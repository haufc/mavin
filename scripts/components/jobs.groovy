
// // Import the required classes
// import org.elasticsearch.action.search.SearchRequest
// import org.elasticsearch.index.query.QueryBuilders
// import org.elasticsearch.search.builder.SearchSourceBuilder

// def queryStatement = 'content-type:\"/page/jobpage\"'

// // Use the appropriate builders according to your query
// def builder = new SearchSourceBuilder()
//     .query(QueryBuilders.queryStringQuery(queryStatement))

// // Execute the query
// def executedQuery = elasticsearch.search(new SearchRequest().source(builder))

// def itemsFound = executedQuery.hits.totalHits
// def items = executedQuery.hits.hits
// print "My demo"
// def demo = executedQuery.hits.hits*.getSourceAsMap().collect { doc ->
//                       print doc["title_s"]
//               }
// // print "My list job : "
// //print items
// // items.each { item ->
// //             print item
// //   }
// //print itemsFound
// def topNavItems = [:]
// def siteDir = siteItemService.getSiteTree("/site/website", 4)

// if(siteDir) {
//     def dirs = siteDir.childItems
//     dirs.each { dir ->
//             def dirName = dir.getStoreName()
//             def dirItem = siteItemService.getSiteItem("/site/website/${dirName}/index.xml")
//             if (dirItem != null) {
//                 def dirDisplayName = dirItem.queryValue('internal-name')
//                   topNavItems.put(dirName, dirDisplayName)
//             }
//   }
// }
// //print "Search with dir name"
// //print topNavItems


// =============================================================================================================
//                                                Search Job
// =============================================================================================================
import org.craftercms.blueprints.headless.JobSearchHelper


def searchHelper = new JobSearchHelper(elasticsearch, urlTransformationService)
def jobs = searchHelper.searchJobs(null)
templateModel.jobs = jobs
// =============================================================================================================

