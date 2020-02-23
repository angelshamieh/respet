class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :animal_status
  belongs_to :user
end
