class DefaultValueToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :site_users, :manager, :boolean, default: false
  end
end
