import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productgrouplevel2_s
print productGroup
def searchHelper = new GroupProductSearchHelper()
def products = searchHelper.searchProducts(productGroup, 0)
print products