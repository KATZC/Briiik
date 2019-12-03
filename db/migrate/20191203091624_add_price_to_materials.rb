class AddPriceToMaterials < ActiveRecord::Migration[5.2]
  def change
    add_monetize :materials, :price, currency: { present: false }
  end
end
