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

  def show?
    true
  end

  def new?
    # user.sites.any?
    true
  end
end
