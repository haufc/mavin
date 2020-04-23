import org.craftercms.blueprints.headless.JobSearchHelper


def searchHelper = new JobSearchHelper(elasticsearch, urlTransformationService)
def jobs = searchHelper.searchJobs(null,0,2)
print jobs
templateModel.jobs = jobs