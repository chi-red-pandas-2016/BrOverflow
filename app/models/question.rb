class Question < ActiveRecord::Base
  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  belongs_to :user

  validates_presence_of :title, :user_id
end
