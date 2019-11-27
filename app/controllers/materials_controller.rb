class MaterialsController < ApplicationController
  def sales
    @my_posts = current_user.materials.limit(2)
    @my_posts_pickup = current_user.materials.where(status: 'Vendu').limit(2)
    @my_posts_done = current_user.materials.where(status: 'Cloturé').limit(2)
  end
end
