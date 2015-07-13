class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :body
      t.integer :duel_id

      t.timestamps
    end
  end
end
