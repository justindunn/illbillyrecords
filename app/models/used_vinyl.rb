class UsedVinyl < ActiveRecord::Base
  attr_accessible :album, :artist, :price, :price, :purchased, :type
  has_many :purchases
end
