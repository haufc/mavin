import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def jobs = searchHelper.searchJobs(params.q)
def homes = searchHelper.searchHomes(params.q)
println  jobs
println homes
return jobs