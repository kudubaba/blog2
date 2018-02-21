require 'bcrypt'

class User < ApplicationRecord
include Bcrypt
has_many :posts

#has_secure_password

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest=@password
  end
end
