class AddVotesToDuels < ActiveRecord::Migration
  def change
    add_column :duels, :character_one_vote, :integer, default: 0;
    add_column :duels, :character_two_vote, :integer, default: 0;
    add_column :users, :total_votes, :integer, default: 0;
  end
end
