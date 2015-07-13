class Duel < ActiveRecord::Base

  has_many :comments
  belongs_to :user
  validates_presence_of :name, :character_two_name, :character_two_body, :character_one_name, :character_one_body

  default_scope { order(created_at: :desc) }

  has_attached_file :character_one_avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "missing.png"
  has_attached_file :character_two_avatar, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url => "missing.png"

  validates_attachment_content_type :character_one_avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :character_two_avatar, :content_type => /\Aimage\/.*\Z/

  #can have no argument for the native image size, or one argument determining the size.
  def character_one_image(*args)
    character_one_avatar.url(*args)
  end

  def character_two_image(*args)
    character_two_avatar.url(*args)
  end

  def total_votes
    character_two_votes + character_one_votes

  end

end
