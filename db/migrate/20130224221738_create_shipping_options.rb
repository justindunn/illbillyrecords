class CreateShippingOptions < ActiveRecord::Migration
  def change
    create_table :shipping_options do |t|
      t.string :name
      t.decimal :cost, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
