class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.integer :idDisease
      t.string :nameDiease

      t.timestamps
    end
  end
end
