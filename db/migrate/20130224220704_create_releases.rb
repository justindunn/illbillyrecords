class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :cover
      t.string :album
      t.string :artist
      t.decimal :price, :precision => 8, :scale => 2
      t.boolean :purchasable

      t.timestamps
    end
  end
end
