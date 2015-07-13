class DestroyCharactersTableAndUpdateDuelsTable < ActiveRecord::Migration
  def change
    drop_table :characters
    add_column :duels, :character_one_name, :string
    add_column :duels, :character_two_name, :string
    add_column :duels, :character_one_body, :string
    add_column :duels, :character_two_body, :string
  end
end
