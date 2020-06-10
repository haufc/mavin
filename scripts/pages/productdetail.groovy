import org.craftercms.blueprints.headless.GroupProductSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productchildgroup_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0,5)

def productVN = relatedProducts.findAll { it.url.indexOf('/en') < 0 }
def productEN = relatedProducts.findAll { it.url.indexOf('/en') > -1}
print "===========> VN"
print productVN.size()
print "===========> EN"
print .size()

def categories = new TaxonomySearchHelper("product-category-child", elasticsearch, siteItemService)
						.getItems()
						
templateModel.groupProduct = categories

templateModel.relatedProducts = relatedProducts
templateModel.productVNs = productVN
templateModel.productENs = productEN
templateModel.relatedProductsSize = relatedProducts.size()