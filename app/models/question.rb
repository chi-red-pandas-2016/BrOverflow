class Question < ActiveRecord::Base
  validates_presence_of :title, :user_id
end
