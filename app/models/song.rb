class Song < ActiveRecord::Base
  attr_accessible :mp3file, :release_id, :songname, :track_length
  belongs_to :release
end
