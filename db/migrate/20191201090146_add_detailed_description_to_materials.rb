class AddDetailedDescriptionToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_column :materials, :detailed_description, :text
  end
end
