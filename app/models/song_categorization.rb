class SongCategorization < ActiveRecord::Base
	belongs_to :song
	belongs_to :song_category
end
