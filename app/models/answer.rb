class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many   :votes, as: :voteable
  has_many    :comments, as: :commentable

  validates_presence_of :user_id, :question_id, :text
end
