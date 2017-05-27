class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :status, :default => 0
      t.string :ip

      t.timestamps
    end
  end
end
