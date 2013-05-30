class User < ActiveRecord::Base
  attr_accessible :birthdate, :email, :password_digest, :username
end
