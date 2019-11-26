class CreateSiteUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :site_users do |t|
      t.boolean :manager
      t.references :user, foreign_key: true
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
