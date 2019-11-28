class SiteUserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.site.site_users.find_by(user: user).manager?
  end
end
