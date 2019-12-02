class SitePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user_is_a_site_user?
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    user_is_a_site_user?
  end

  def destroy?
    user_is_a_site_user?
  end

  def records?
    true
  end

  private

  def user_is_a_site_user?
    user.sites.include?(record)
  end
end
