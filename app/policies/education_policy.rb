class EducationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
