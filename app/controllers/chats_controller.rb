class ChatsController < ApplicationController
  def index
    @chats = policy_scope(Chat)
  end

  def show
    @chat = Chat.includes(messages: :user).find(params[:id])
    authorize @chat
  end

  def start_chat
    # 1. get user id from params (person you're trying to chat to)
    target_user = User.find(params[:user_id])
    # 2. get current user
    # 3. fetch or create chat:
    chat = current_user.chat_with!(target_user)
    # 4. Redirect to SHOW the chat
    authorize chat
    redirect_to chat_path(chat)
  end
end
