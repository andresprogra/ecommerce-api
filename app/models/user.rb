class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          #,:confirmable
          #,:omniauthable
  include DeviseTokenAuth::Concerns::User
  enum permission: [:client, :partner, :admin]
  has_many :products
  has_many :orders
end
