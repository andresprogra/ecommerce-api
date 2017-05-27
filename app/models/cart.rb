class Cart < ApplicationRecord
  has_many :in_shopping_cart
  enum status: [:incomplete, :complete]
end
