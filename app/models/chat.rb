class Chat < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'

  validates :user1, uniqueness: { scope: :user2 }
  validates :user2, uniqueness: { scope: :user1 }
  validate :user_cannot_chat_to_self

  private

  def user_cannot_chat_to_self
    if user1 == user2
      errors.add(:user1, "cannot chat to yourself")
    end
  end
end
