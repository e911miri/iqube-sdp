class User < ActiveRecord::Base
  has_many :subscriptions
  has_many :courses, :through=>:subscriptions
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :status,:iquber,:phone, :name
  # attr_accessible :title, :body
end