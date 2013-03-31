class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :shipping_option_id
      t.string :payment_method_id
      t.decimal :totalprice, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
