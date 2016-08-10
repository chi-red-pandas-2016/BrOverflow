class Answer < ActiveRecord::Base
  validates_presence_of :user_id, :question_id, :text
end
