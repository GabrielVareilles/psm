require 'csv'

class JobImporter
  def call(csv_file)
    csv_options = { headers: :first_row }

    sector = nil
    activity_area = nil
    category = nil
    label = nil
    CSV.foreach(csv_file, csv_options) do |row|
      sector = row['Secteur principal'] || sector
      activity_area = row["Secteur d'activité "] || activity_area
      category = row["Sous-secteur"] || category
      label = row["Catégorie de métier"] || label

      Job.create!(
        sector: sector,
        activity_area: activity_area,
        category: category,
        label: label
      )
    end
  end
end
