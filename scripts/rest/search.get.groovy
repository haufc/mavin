import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def jobs = searchHelper.searchJobs(params.q)
def homes = searchHelper.searchHomes(params.q)
def intros = searchHelper.searchIntros(params.q)
def news = searchHelper.searchNews(params.q)

println "This is Jobs : =================================>"
println  jobs

println "This is Intros : =================================>"
println intros

println "This is News : =================================>"
println news


return [jobs, intros]