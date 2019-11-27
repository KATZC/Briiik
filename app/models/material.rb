class Material < ApplicationRecord
  include PgSearch::Model

  CATEGORIES = ['Habillage', 'Consommable', 'Plomberie']

  belongs_to :site
  belongs_to :site_user
  has_many :bids

  validates :minimum_price, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  validates :category, :inclusion => CATEGORIES

  pg_search_scope :search_by_category_and_description,
    against: [:category, :description],
    associated_against: {
      site: [:address]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
