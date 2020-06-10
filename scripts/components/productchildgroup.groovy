import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productgrouplevel2_s
print productGroup
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(productGroup, 0,6)
def productVN = products.findAll { it.url.indexOf('/en') < 0 }
def productEN = products.findAll { it.url.indexOf('/en') > -1}
print "Product English: ============> "
print productEN

print "Product Viet Nam: ============> "
print productVN

templateModel.products = products