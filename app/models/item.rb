class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_many :item_categories, dependent: :destroy

  validates :name, :description, :price, presence: true
end
