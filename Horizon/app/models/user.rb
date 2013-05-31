class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation, :birthdate, :first_name, :last_name

  has_secure_password

  # Validation; everything present, some other requirements
		# Regex borrowed without asking from http://www.regular-expressions.info/email.html
	email_regex = /[a-z0-9!#$\%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$\%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/

	validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 1..25 }
	validates_length_of :password, minimum: 5
	validates :email, uniqueness: true, format: { with: email_regex }
	validates_presence_of :email, :first_name, :last_name
end
