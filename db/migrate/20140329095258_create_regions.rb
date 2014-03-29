class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :idRegion
      t.string :nameRegion
      t.integer :idCountry

      t.timestamps
    end
  end
end
