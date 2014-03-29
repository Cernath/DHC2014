class CreateDiseaseSymptoms < ActiveRecord::Migration
  def change
    create_table :disease_symptoms do |t|
      t.integer :idDisease
      t.integer :idSymptom

      t.timestamps
    end
  end
end
