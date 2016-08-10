class Vote < ActiveRecord::Base
  validates_uniqueness_of :user_id, scope: :voteable_id
end
