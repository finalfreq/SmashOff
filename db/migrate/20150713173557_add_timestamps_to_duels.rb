class AddTimestampsToDuels < ActiveRecord::Migration
  def change
    add_column :duels, :created_at, :datetime
    add_column :duels, :updated_at, :datetime
  end
end
