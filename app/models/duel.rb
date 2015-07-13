class Duel < ActiveRecord::Base

  has_many :comments
  belongs_to :user
  validates_presence_of :name, :character_two_name, :character_two_body, :character_one_name, :character_one_body

  has_attached_file :character_one_avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  has_attached_file :character_two_avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"

  validates_attachment_content_type :character_one_avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :character_two_avatar, :content_type => /\Aimage\/.*\Z/


end
