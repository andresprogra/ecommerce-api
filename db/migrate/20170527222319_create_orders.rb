class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :status, :default => 0
      t.references :cart, foreign_key: true
      t.references :user, foreign_key: true
      t.string :street
      t.string :colonia
      t.string :num_ext
      t.string :num_int
      t.string :phone

      t.timestamps
    end
  end
end
