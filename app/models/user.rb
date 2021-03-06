class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bids, dependent: :destroy
  has_many :bidden_materials, through: :bids, source: :material
  has_many :site_users, dependent: :destroy
  has_many :sites, through: :site_users
  has_many :materials, through: :site_users
  has_many :orders
end
