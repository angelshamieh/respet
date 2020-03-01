class ChatsController < ApplicationController
  def index
  end

  def show
    @chat = Chat.includes(messages: :user).find(params[:id])
    authorize @chat
  end
end
