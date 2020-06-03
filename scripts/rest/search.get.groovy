import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def jobs = searchHelper.searchJobs(params.q)
// def homes = searchHelper.searchHomes(params.q)
def intros = searchHelper.searchIntros(params.q)
def news = searchHelper.searchNews(params.q)
def products = searchHelper.searchProducts(params.q)

println "This is Jobs : =================================>"
println  jobs

println "This is Intros : =================================>"
println intros

println "This is News : =================================>"
println news

intros.each{ intro ->
     intro.highlight = intro.highlight.replaceAll("\\<.*?\\>", "");
     
     if (intro.highlight.length() > 150) {
         intro.highlight = intro.highlight.substring(0,120)
         intro.highlight + "..."
     }
 }

jobs.each{ job ->
     job.highlight = job.highlight.replaceAll("\\<.*?\\>", "");
     
     if (job.highlight.length() > 150) {
         job.highlight = job.highlight.substring(0,120)
         job.highlight + "..."
     }
 }

// homes.each{ home ->
//      home.highlight = home.highlight.replaceAll("\\<.*?\\>", "");
     
//      if (home.highlight.length() > 150) {
//          home.highlight = home.highlight.substring(0,120)
//          home.highlight.concat("...")
//      }
//  }
 
 news.each{ new1 ->
     new1.highlight = new1.highlight.replaceAll("\\<.*?\\>", "");
     
     if (new1.highlight.length() > 150) {
         new1.highlight = new1.highlight.substring(0,120)
         new1.highlight + "..."
     }
 }
 
 products.each{ product ->
     product.highlight = product.highlight.replaceAll("\\<.*?\\>", "");
     
     if (product.highlight.length() > 150) {
         product.highlight = product.highlight.substring(0,120)
         product.highlight + "..."
     }
 }

return [jobs, intros, news, products]