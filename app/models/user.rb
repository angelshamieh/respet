class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
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

  def bookmarked_animals
    Animal.joins(:bookmarks).where('bookmarks.user_id = ?', id)
  end

  def chats
    Chat.where(user1: self).or(Chat.where(user2: self))
  end

  def chat_with!(user)
    chat = (Chat.where(user1: self, user2: user).or(
      Chat.where(user1: user, user2: self))).first
    if chat.nil?
      chat = Chat.create!(user1: self, user2: user)
    end
    chat
  end
end
