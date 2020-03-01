class ChatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user1: user).or(scope.where(user2: user))
    end
  end

  def show?
    [record.user1, record.user2].include? user
  end

  def start_chat?
    true
  end
end
