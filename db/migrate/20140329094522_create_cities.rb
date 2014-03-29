class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :idCity
      t.string :nameCity
      t.integer :idDepartment

      t.timestamps
    end
  end
end
