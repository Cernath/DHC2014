class CreateSymps < ActiveRecord::Migration
  def change
    create_table :symps do |t|
      t.string :maladie
      t.string :symp1
      t.string :symp2
      t.string :symp3
      t.string :symp4
      t.string :symp5

      t.timestamps
    end
  end
end
