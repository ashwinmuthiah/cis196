class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  #attr_accessible :email, :name, :password, :password_confirmation
  has_many :tasklists, :dependent => :destroy
  # Need error messages!
  validates :name, presence: true
  validates :password, length: {minimum: 6}
  #emailFormatValidtaion

  validates :password, confirmation: true
  # Add validations here!!!!!
end
