require 'csv'

class NafImporter
  def call(csv_file)
    csv_options = { col_sep: ';', headers: :first_row }

    CSV.foreach(csv_file, csv_options) do |row|
      NafJob.create!(
        description: row['Metier'],
        naf_code: row['NAF'],
        lvl5_desc: row['NIV5Libelle'],
        lvl1: row['NIV1'],
        lvl1_desc: row['NIV1Libelle'],
        lvl2: row['NIV2'],
        lvl2_desc: row['NIV2Libelle'],
        lvl3: row['NIV3'],
        lvl3_desc: row['NIV3Libelle'],
        lvl4: row['NIV4'],
        lvl4_desc: row['NIV4Libelle'],
        siblings: row['Nombre de cas similaire'],
      )
    end
  end
end
