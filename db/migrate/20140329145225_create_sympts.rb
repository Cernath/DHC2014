class CreateSympts < ActiveRecord::Migration
  def change
    create_table :sympts do |t|
      t.string :maladie
      t.string :symptome1
      t.string :symptome2
      t.string :symptome3
      t.string :symptome4
      t.string :symptome5
      t.string :symptome6
      


      t.timestamps
    end
  end
end
