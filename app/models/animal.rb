class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :animal_status
  belongs_to :user

  has_many :bookmarks

  validates :title, presence: true, length: {maximum: 15}
  # validates :photos, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :gender, inclusion: { in: %w(Male Female), message: "must be Male or Female"}

  has_many_attached :photos

  def self.search_by_status_status(status)
    Animal.joins(:animal_status).where('animal_statuses.status = ?', status)
  end

  include PgSearch::Model
  pg_search_scope :search_by_title_and_location_and_description,
    against: [:title, :location, :description],
    using: {
    tsearch: { prefix: true }
      }
end
