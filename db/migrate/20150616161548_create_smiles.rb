class CreateSmiles < ActiveRecord::Migration
  def change
    create_table :smiles do |t|
      t.string :smiletext
      t.string :username
      t.string :country

      t.timestamps
    end
  end
end
