class AddUsersToChat < ActiveRecord::Migration[5.2]
  def change
    add_reference :chats, :user1, foreign_key: { to_table: :users }
    add_reference :chats, :user2, foreign_key: { to_table: :users }
  end
end
