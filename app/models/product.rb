class Product < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  #validates :description, presence: true
  validates :price, presence: true

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  def to_price
    "$#{price /  100}"
  end

end
