import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productchildgroup_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0,5)


def categories = new TaxonomySearchHelper("product-category-child", elasticsearch, siteItemService)
						.getItems()

print "category======>"
print categories
templateModel.relatedProducts = relatedProducts