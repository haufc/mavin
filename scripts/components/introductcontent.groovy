import org.craftercms.blueprints.headless.IntroductSearchHelper


def searchHelper = new IntroductSearchHelper(elasticsearch, urlTransformationService)
def intros = searchHelper.searchIntroducts(null)
print "hello every body"

print intros