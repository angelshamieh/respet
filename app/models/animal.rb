class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :animal_status
  belongs_to :user

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true

  # has_many_attached :photos

end
