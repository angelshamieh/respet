class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :animal_status
  belongs_to :user

  validates :title, presence: true
  validates :photos, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :gender, inclusion: { in: %w(male female), message: "must be male or female"}

  has_many_attached :photos


  def self.search_by_status_status(status)
    Animal.joins(:animal_status).where('animal_statuses.status = ?', status)
  end
end
