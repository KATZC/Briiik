class Material < ApplicationRecord
  belongs_to :site
  belongs_to :site_user
  has_many :bids
  validates :minimum_price, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  validates :category, presence: true
  validates_inclusion_of :status, in: ['En ligne', 'Vendu', 'Non-vendu', 'Remis', 'Cloturé']
end

