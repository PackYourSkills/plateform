class MissionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    current_user_a_crew?
  end

  def update?
    current_user_or_admin?
  end

  def destroy?
    current_user_or_admin?
  end

private

  def current_user_a_crew?
    user.crew?
  end

  def current_user_or_admin?
    user == record.crew.user || user.admin
  end
end
