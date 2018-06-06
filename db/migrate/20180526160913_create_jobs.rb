class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :sector
      t.string :activity_area
      t.string :label
      t.string :category

      t.timestamps
    end
  end
end
