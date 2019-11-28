class MaterialPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def sales?
    true
  end

  def index?
    true
  end

  def new?
    user.sites.any?
  end
end
