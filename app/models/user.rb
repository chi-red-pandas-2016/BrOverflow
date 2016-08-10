class User < ActiveRecord::Base
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
