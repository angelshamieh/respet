class AddChatToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :chat, foreign_key: true
  end
end
