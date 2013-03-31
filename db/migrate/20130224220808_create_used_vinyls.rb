class CreateUsedVinyls < ActiveRecord::Migration
  def change
    create_table :used_vinyls do |t|
      t.string :album
      t.string :artist
      t.string :type
      t.boolean :purchased
      t.decimal :price, :precision => 8, :scale => 2


      t.timestamps
    end
  end
end
