class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
    add_index :orders, :user_id
  end
end
