import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productchildgroup_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0,5)
print contentModel.productchildgroup_o.text
print relatedProducts
templateModel.relatedProducts = relatedProducts