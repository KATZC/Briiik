class Material < ApplicationRecord

  include PgSearch::Model

  belongs_to :site
  belongs_to :site_user
  has_many :bids
  validates :minimum_price, presence: true
  validates :deadline, presence: true
  validates :status, presence: true
  validates :category, presence: true


  pg_search_scope :search_by_category,
    against: [ :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end

