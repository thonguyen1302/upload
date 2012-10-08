class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
 # devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:first_name, :last_name, :birthday, :phone_number
  # attr_accessible :title, :body
  validates :email, :password, :password_confirmation, :first_name, :last_name, :birthday, :phone_number, presence: true
  validates :phone_number, numericality: {}
end
