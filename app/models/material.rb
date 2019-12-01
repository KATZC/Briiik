class Material < ApplicationRecord
  include PgSearch::Model

  CATEGORIES = ['Habillage', 'Consommable', 'Plomberie']

  belongs_to :site
  belongs_to :site_user
  has_one :user, through: :site_user
  has_many :bids
  has_one_attached :photo

  validates :minimum_price, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  validates_inclusion_of :status, in: ['En ligne', 'Vendu', 'Non-vendu', 'Remis', 'Cloturé']
  validates :category, :inclusion => CATEGORIES

  pg_search_scope :search_by_category_and_description,
    against: [:category, :description],
    associated_against: {
      site: [:address]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def highest_bid
    bids.order('price ASC').last&.price  || minimum_price
  end
end

