class Item < ApplicationRecord
  belongs_to :user

  validates :name, :description, :price, presence: true
end
