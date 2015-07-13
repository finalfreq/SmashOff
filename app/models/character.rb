class Character < ActiveRecord::Base

  belongs_to :duel
  
  validates_presence_of :name, :body

end
