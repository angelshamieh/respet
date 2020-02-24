class AnimalStatus < ApplicationRecord
  has_many :animals

  validates :status, inclusion: { in: %w(lost found adopt adopted reunited), message: "%{value} is not a valid animal status"}
  validates :status, presence: true
end
