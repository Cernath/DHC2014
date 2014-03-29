class CreateEpidemicdata < ActiveRecord::Migration
  def change
    create_table :epidemicdata do |t|
      t.integer :idData
      t.date :date
      t.integer :idCity
      t.integer :idDisease

      t.timestamps
    end
  end
end
