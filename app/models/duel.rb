class Duel < ActiveRecord::Base

  has_many :characters
  has_many :comments
  belongs_to :user
  validates_presence_of :name

end
