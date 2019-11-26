class AddStatusToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :status, :string
  end
end
