class ShippingOption < ActiveRecord::Base
  attr_accessible :cost, :cost, :name
  has_many :orders
end
