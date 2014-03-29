class CreateGlobals < ActiveRecord::Migration
  def change
    create_table :globals do |t|
      t.string :ville
      t.string :departement
      t.string :region
      t.string :pays
      t.date :date
      t.string :maladie

      t.timestamps
    end
  end
end
