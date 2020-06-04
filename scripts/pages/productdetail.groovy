import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productchildgroup_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0,5)
print "==================>"
print contentModel.productchildgroup_o.item.each{item -> print item}
print relatedProducts
templateModel.relatedProducts = relatedProducts