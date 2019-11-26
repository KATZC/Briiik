class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :category
      t.text :description
      t.integer :minimum_price
      t.datetime :deadline
      t.references :site, foreign_key: true
      t.references :site_user, foreign_key: true

      t.timestamps
    end
  end
end
