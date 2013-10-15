class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  # Need error messages!
  validates :name, presence: true
  validates :password, length: {minimum: 6}
  #emailFormatValidtaion

  validates :password, confirmation: true
  # Add validations here!!!!!
end
