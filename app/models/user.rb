class User < ActiveRecord::Base
  attr_accessible :addressline1, :addressline2, :city, :firstname, :lastname, :lastorder, :password, :payment_method_id, :phone, :purchased_before, :state, :username, :zip
  has_many :orders
  has_many :purchases
  belongs_to :payment_method
end
