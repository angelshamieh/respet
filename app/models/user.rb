class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :animals, dependent: :destroy
  has_many :bookmarks

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :bookmarks, uniqueness: { scope: :animal }

  has_one_attached :avatar

  def bookmark_for_animal(animal)
    bookmarks.find_by(animal: animal)
  end
end
