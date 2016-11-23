class PackerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    current_user_or_admin?
  end

  def deck?
    current_user_or_admin?
  end

  private

  def current_user_or_admin?
    user == record.user || user.admin
  end
end
