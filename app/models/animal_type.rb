class AnimalType < ApplicationRecord
  has_many :animals

  validates :name, inclusion: { in: %w(dog cat bird rabbit), message: "%{value} is not a valid animal type"}
  validates :name, presence: true
end
