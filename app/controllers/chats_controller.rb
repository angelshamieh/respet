class ChatsController < ApplicationController
  def index
    @chats = policy_scope(Chat)
  end

  def show
    @chat = Chat.includes(messages: :user).find(params[:id])
    authorize @chat
  end
end
