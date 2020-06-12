import org.craftercms.blueprints.headless.NewsEnSearchHelper


def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchNews(null)
println "News:"
print news

templateModel.news = news