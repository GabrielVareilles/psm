require_relative '../lib/importers/naf_importer.rb'

filepath    = 'db/data/naf.csv'
NafImporter.new.call(filepath)

Administrator.create(email: "admin@psm.com", password: "petitcoeurboude")
