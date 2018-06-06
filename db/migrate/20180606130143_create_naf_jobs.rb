class CreateNafJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :naf_jobs do |t|
      t.text :description
      t.string :naf_code
      t.string :lvl1
      t.text :lvl1_desc
      t.string :lvl2
      t.text :lvl2_desc
      t.string :lvl3
      t.text :lvl3_desc
      t.string :lvl4
      t.text :lvl4_desc
      t.string :lvl5
      t.text :lvl5_desc
      t.integer :siblings
      t.timestamps
    end
  end
end
