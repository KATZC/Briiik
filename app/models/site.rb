class Site < ApplicationRecord
  has_many :materials
  has_many :site_users
  has_many :users, through: :site_users
  validates :address, presence: true
end
