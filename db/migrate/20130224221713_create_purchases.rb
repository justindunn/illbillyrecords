class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :release_id
      t.string :used_vinyl_id
      t.string :user_id

      t.timestamps
    end
  end
end
