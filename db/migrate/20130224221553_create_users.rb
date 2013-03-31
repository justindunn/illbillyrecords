class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :addressline1
      t.string :addressline2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :payment_method_id
      t.boolean :purchased_before
      t.string :lastorder

      t.timestamps
    end
  end
end
