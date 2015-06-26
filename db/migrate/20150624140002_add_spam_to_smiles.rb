class AddSpamToSmiles < ActiveRecord::Migration
  def change
    add_column :smiles, :spam, :boolean
  end
end
