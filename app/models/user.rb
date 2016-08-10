class User < ActiveRecord::Base
  has_many :questions
  has_many :comments
  has_many :votes
  has_many :answers

  validates_presence_of :email, :hashed_password, :username
  validates_uniqueness_of :email, :username

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(input_string)
    @password = Password.create(input_string)
    self.hashed_password = @password
  end

end
