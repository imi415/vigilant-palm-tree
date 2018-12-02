class AddLeEnabledToSites < ActiveRecord::Migration[5.2]
  def change
    change_table :sites do |t|
      t.boolean :le_enabled
      t.integer :le_status
    end
  end
end
