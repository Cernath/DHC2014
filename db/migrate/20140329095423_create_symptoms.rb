class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.integer :idSymptom
      t.string :nomSymptom
      t.text :descriptionSymptom

      t.timestamps
    end
  end
end
