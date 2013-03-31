class Release < ActiveRecord::Base
  attr_accessible :album, :artist, :cover, :price, :price, :purchasable
  has_many :purchases
  has_many :songs
end
