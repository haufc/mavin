templateModel.varLue = "aaaaaaa"

def queryStatement = 'content-type:"/page/home"'

def query = searchService.createQuery()
query.setQuery(queryStatement)

def executedQuery = searchService.search(query)
def itemsFound = executedQuery.response.numFound
def items = executedQuery.response.documents
print "this is imtem"
