class CreateDataSymptoms < ActiveRecord::Migration
  def change
    create_table :data_symptoms do |t|
      t.integer :idData
      t.integer :idSymptom

      t.timestamps
    end
  end
end
