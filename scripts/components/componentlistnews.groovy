import org.craftercms.blueprints.headless.NewsSearchHelper


def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.search(null)
println "News:"
print news

templateModel.news = news