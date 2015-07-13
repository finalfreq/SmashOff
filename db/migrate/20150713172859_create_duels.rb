class CreateDuels < ActiveRecord::Migration
  def change
    create_table :duels do |t|
      t.integer :user_id
      t.string :name
    end
  end
end
