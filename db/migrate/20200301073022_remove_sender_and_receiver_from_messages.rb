class RemoveSenderAndReceiverFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :receiver_id
    remove_column :messages, :sender_id
  end
end
