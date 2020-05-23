import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productgrouplevel2_s
def searchHelper = new GroupProductSearchHelper()
def products = searchHelper.searchProducts(productGroup)
print products