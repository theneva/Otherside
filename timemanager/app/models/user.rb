class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  
  email_regex = /[a-z0-9!#$\%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$\%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/

  validates :email, uniqueness: true, format: { with: email_regex }
  validates :first_name, presence: true
  validates :first_name, presence: true
  validates :password, :on => :create, length: { in: 6...20 } # I don't want long passwords, because I'm cool like that



  has_secure_password

end
