class Site < ApplicationRecord
  has_many :materials
  has_many :users, through: :site_users
  validates :address, presence: true
end
