require_relative '../lib/importers/naf_importer.rb'
require_relative '../lib/importers/job_importer.rb'

# filepath    = 'db/data/naf.csv'
# NafImporter.new.call(filepath)
Job.destroy_all
filepath = 'db/data/jobs.csv'
JobImporter.new.call(filepath)

# Administrator.create(email: "admin@psm.com", password: "petitcoeurboude")
