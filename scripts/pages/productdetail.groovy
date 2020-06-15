import org.craftercms.blueprints.headless.GroupProductSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productchildgroup_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0)

def productVN = relatedProducts.findAll { it.url.indexOf('/en') < 0 }
def productEN = relatedProducts.findAll { it.url.indexOf('/en') > -1}

productVN.eachWithIndex { item, index ->
    if (index > 4) {
        productVN.remove(index)
    }
}

productEN.eachWithIndex { item, index ->
    if (index > 4) {
        productEN.remove(index)
    }
}

def categories = new TaxonomySearchHelper("product-category-child", elasticsearch, siteItemService)
						.getItems()
						
templateModel.groupProduct = categories

templateModel.relatedProducts = relatedProducts
templateModel.productVNs = productVN
templateModel.productENs = productEN
