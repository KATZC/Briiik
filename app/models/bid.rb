class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :material
  validates :price, presence: true
end
