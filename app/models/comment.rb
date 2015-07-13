class Comment < ActiveRecord::Base

  belongs_to :user 
  belongs_to :duel

  validates_presence_of :body


end
