class Order < ActiveRecord::Base
  attr_accessible :payment_method_id, :shipping_option_id, :totalprice, :totalprice, :user_id
  belongs_to :payment_method
  belongs_to :shipping_option
  belongs_to :user
end
