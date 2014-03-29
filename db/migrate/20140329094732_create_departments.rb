class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.integer :idDepartement
      t.string :nameDepartment
      t.integer :idRegion

      t.timestamps
    end
  end
end
