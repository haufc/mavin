import org.craftercms.blueprints.headless.NewsSearchHelper


def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.search(null,0,6)
println "News:"
print news

templateModel.news = news