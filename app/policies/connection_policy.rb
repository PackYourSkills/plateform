# use 'case' more than 'if' for better understanding

class ConnectionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    !current_user_a_crew?
  end

  def update?
    case record.status
      when 'draft', 'suspended' #suspended status is in case of moderation from an admin
        current_user_a_crew? ? false : concerned_packer_or_admin?
      when 'online', 'accepted', 'refused', 'canceled', 'confirmed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def show?
    case record.status
      when 'draft', 'suspended'
        current_user_a_crew? ? false : concerned_packer_or_admin?
      when 'online', 'accepted', 'refused', 'canceled', 'confirmed'
        concerned_user_or_admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def accept?
    case record.status
      when 'online'
        current_user_a_crew? ? concerned_crew_or_admin? : false
      when 'draft', 'suspended', 'accepted', 'refused', 'canceled', 'confirmed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def refuse?
    case record.status
      when 'online'
        current_user_a_crew? ? concerned_crew_or_admin? : false
      when 'draft', 'suspended', 'accepted', 'refused', 'canceled', 'confirmed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def cancel?
    case record.status
      when 'online'
        concerned_user_or_admin?
      when 'draft', 'suspended', 'accepted', 'refused', 'canceled', 'confirmed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def confirm?
    case record.status
      when 'accepted'
        current_user_a_crew? ? false : concerned_packer_or_admin?
      when 'draft', 'online', 'suspended', 'refused', 'canceled', 'confirmed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

  def destroy?
    case record.status
      when 'draft'
        current_user_a_crew? ? false : concerned_packer_or_admin?
      when 'online', 'suspended', 'accepted', 'refused', 'canceled', 'confirmed'
        admin?
      else #should have nothing here but in case of a error in code
        admin?
    end
  end

private

  def admin?
    user.admin
  end

  def current_user_a_crew?
    user.crew?
  end

  def draft?
    record.status == 'draft'
  end

  def concerned_user_or_admin?
    current_user_a_crew? ? concerned_crew_or_admin? : concerned_packer_or_admin?
  end

  def concerned_crew_or_admin?
    user == record.crew.user || admin?
  end

  def concerned_packer_or_admin?
    user == record.packer.user || admin?
  end
end



