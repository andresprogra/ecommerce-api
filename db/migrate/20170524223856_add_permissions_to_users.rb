class AddPermissionsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :permission, :integer, :default => 0
  end
end
