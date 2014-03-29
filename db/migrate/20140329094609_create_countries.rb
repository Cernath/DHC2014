class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :idCountry
      t.string :nameCountry
      t.integer :shortCountry

      t.timestamps
    end
  end
end
