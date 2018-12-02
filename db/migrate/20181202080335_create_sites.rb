class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :cname
      t.integer :port
      t.boolean :https_backend
      t.boolean :https_enabled
      t.boolean :https_redirect
      t.timestamps
    end
  end
end
