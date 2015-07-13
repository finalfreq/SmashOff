class AddAttachmentCharacterOneAvatarToDuels < ActiveRecord::Migration
  def self.up
    change_table :duels do |t|
      t.attachment :character_one_avatar
    end
  end

  def self.down
    remove_attachment :duels, :character_one_avatar
  end
end
