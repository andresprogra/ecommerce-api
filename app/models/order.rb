class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user
  enum status: [:received, :processing, :received_partner, :awaiting_collection, :in_transit, :delivery]
  validates :street, presence: true
  validates :num_ext, presence: true
  validates :colonia, presence: true
end
