class AddDefaultValueForUsername < ActiveRecord::Migration
  def change
    change_column :smiles, :username, :string, :default => "Someone"
  end

end
