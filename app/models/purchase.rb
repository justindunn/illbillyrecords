class Purchase < ActiveRecord::Base
  attr_accessible :release_id, :used_vinyl_id, :user_id
  belongs_to :release
  belongs_to :used_vinyl
  belongs_to :user
end
