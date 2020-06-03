import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def jobs = searchHelper.searchJobs(params.q)
def homes = searchHelper.searchHomes(params.q)
def intros = searchHelper.searchIntros(params.q)
def news = searchHelper.searchNews(params.q)
def products = searchHelper.searchProducts(params.q)

// println "This is Jobs : =================================>"
// println  jobs

// println "This is Intros : =================================>"
// println intros

// println "This is News : =================================>"
// println news
 news.each{ new1 ->
     print "This is News : =================================>"
     println new1.highlight
     new1.highlight = new1.highlight.replaceAll("\\<.*?\\>", "");
     
     if (new1.highlight.length() > 300) {
         new1.highlight = new1.highlight.substring(0,300)
     }
     
     print "after cut is News : =================================>"
     println new1.highlight
 }

// println "This is product : =================================>"
// println products

return [jobs, intros, news, products]