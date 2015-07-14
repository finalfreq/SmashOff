class Comment < ActiveRecord::Base

  belongs_to :user
  belongs_to :duel
  default_scope { order('created_at desc')}
  validates_presence_of :body


end
