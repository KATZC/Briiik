class Site < ApplicationRecord
  has_many :materials
  has_many :site_users
  has_many :users, through: :site_users
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
